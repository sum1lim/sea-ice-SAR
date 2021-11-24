import sys
import rasterio
import statistics
import smogn
import numpy as np
import pandas as pd
import seaborn as sns

import matplotlib.pyplot as plt
from tqdm import tqdm
from osgeo import gdal
from .utils import get_pixel, window, decompose_filepath


def configure_features(pixels, feature_li, feature_cfg, window_size):
    df = pd.DataFrame(
        np.array(
            [
                features if type(features[0]) != list else f
                for _, features in pixels.items()
                for f in features
            ]
        ),
        columns=feature_li,
    )
    df = df.drop_duplicates()

    for f in feature_li:
        for key, value in feature_cfg.items():
            if "_".join(f.split("_")[:-2]) in value:
                [i, j] = f.split("_")[-2:]
                if window_size > 1:
                    df = df.rename(columns={f"{f}": f"{key}_{i}_{j}"}, errors="raise")
                    continue
                else:
                    df = df.rename(columns={f"{f}": f"{key}"}, errors="raise")

    return df


def organize_data(expert_data, features_files, window_size, is_aggregate, mask_file):
    feature_li = ["label", "src_dir", "row", "col", "num_points", "mask"]

    mask_raster = rasterio.open(mask_file)
    mask_arr = mask_raster.read(1)

    for iteration, ff in enumerate(features_files):
        if not ff.endswith(".tif"):
            continue

        print(f"Reading {ff}", file=sys.stdout)
        dir_path, filename, extension = decompose_filepath(ff)
        feature_li = feature_li + [
            f"{filename}_{i}_{j}"
            for i in range(window_size)
            for j in range(window_size)
        ]
        ds = gdal.Open(ff)
        raster = rasterio.open(ff)
        band_arr = raster.read(1)

        if iteration == 0:
            pixels = {}
            for idx, datum in enumerate(tqdm(expert_data)):
                if "" in datum:
                    continue
                row, col = get_pixel(ds, datum[0], datum[1])
                if (row, col) not in pixels.keys():
                    pixels[(row, col)] = [
                        [float(datum[2])],
                        dir_path,
                        row,
                        col,
                        1,
                        int(mask_arr[row, col]),
                    ] + window(band_arr, row, col, window_size)
                else:
                    if is_aggregate:
                        pixels[(row, col)][4] += 1
                    pixels[(row, col)][0].append(float(datum[2]))
        else:
            for k in pixels.keys():
                row = k[0]
                col = k[1]
                pixels[k] = pixels[k] + window(band_arr, row, col, window_size)

    if is_aggregate:
        for k in pixels.keys():
            pixels[k][0] = statistics.mean(pixels[k][0])
    else:
        pixels = {
            k: [[label] + pixels[k][1:] for label in pixels[k][0]]
            for k in pixels.keys()
        }

    return pixels, feature_li


def GLCM_band(bordered_img, border_width, band, datapoints):
    half_right_angle = np.pi / 8

    return [
        greycomatrix(
            bordered_img[
                row : row + 2 * border_width + 1,
                col : col + 2 * border_width + 1,
                band,
            ],
            distances=[1],
            angles=[
                0,
                half_right_angle,
                2 * half_right_angle,
                3 * half_right_angle,
                4 * half_right_angle,
                5 * half_right_angle,
                6 * half_right_angle,
                7 * half_right_angle,
            ],
            levels=64,
        )
        for (row, col) in datapoints
    ]


def GLCM_handler(csv_file, img_dir, single_file=False):
    GLCM_dataset = open(f"{parent_dir}/GLCM.csv", "w", newline="")
    GLCM_writer = csv.writer(GLCM_dataset)

    dataframe = pd.read_csv(csv_file, header=0)

    GLCM_writer.writerow(
        list(dataframe.columns)
        + [
            "entropy_hh",
            "entropy_hv",
            "ASM_hh",
            "ASM_hv",
            "contrast_hh",
            "contrast_hv",
            "homogeneity_hh",
            "homogeneity_hv",
            "dissimilarity_hh",
            "dissimilarity_hv",
        ]
    )

    grouped = dataframe.groupby(["src_dir"])

    for name, group in tqdm(grouped):
        src_dir = name[0]

        hh_file = f"{img_dir}/{src_dir}/hh.tif"
        hv_file = f"{img_dir}/{src_dir}/hv.tif"

        data_points = [
            (int(item["row"]), int(item["col"])) for idx, item in group.iterrows()
        ]

        GLCM_matrices = generate_GLCM([hh_file, hv_file], data_points)

        entropy = glcm_product(GLCM_matrices, "entropy")
        ASM = glcm_product(GLCM_matrices, "ASM")
        contrast = glcm_product(GLCM_matrices, "contrast")
        homogeneity = glcm_product(GLCM_matrices, "homogeneity")
        dissimilarity = glcm_product(GLCM_matrices, "dissimilarity")

        i = 0
        for idx, item in group.iterrows():
            GLCM_features = (
                [item[i] for i in range(len(item))]
                + entropy[i, :].tolist()
                + ASM[i, :].tolist()
                + contrast[i, :].tolist()
                + homogeneity[i, :].tolist()
                + dissimilarity[i, :].tolist()
            )
            GLCM_writer.writerow(GLCM_features)
            i += 1


def generate_GLCM(img_files, datapoints):
    GLCM_matrices = []
    for img_file in img_files:

        image = cv2.imread(img_file)

        rescaled = ((image / 255) * (64 - 1)).astype(int)

        border_width = 5
        bordered = cv2.copyMakeBorder(
            rescaled,
            border_width,
            border_width,
            border_width,
            border_width,
            borderType=cv2.BORDER_REFLECT_101,
        )

        GLCM = GLCM_band(bordered, border_width, 0, datapoints)
        GLCM_matrices.append(GLCM)

    return GLCM_matrices


def generate_entropy(GLCM):
    e = np.finfo(float).eps

    return [
        np.sum(-np.multiply(GLCM[:, :, :, i], np.log(GLCM[:, :, :, i] + e)))
        for i in range(GLCM.shape[-1])
    ]


def glcm_product(GLCM_matrices, product_type):
    return np.transpose(
        np.asarray(
            [
                [
                    np.sum(generate_entropy(GLCM))
                    if product_type == "entropy"
                    else np.sum(greycoprops(GLCM, product_type)[0])
                    for GLCM in GLCM_matrices[i]
                ]
                for i in range(len(GLCM_matrices))
            ]
        )
    )
