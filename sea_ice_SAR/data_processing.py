import sys
import rasterio
import statistics
import numpy as np
import pandas as pd

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


def tr_min_max(tr_datasets):
    tr_max = None
    tr_min = None
    for f in tr_datasets:
        ds = gdal.Open(f)
        band = ds.GetRasterBand(1)
        band_arr = band.ReadAsArray()

        if tr_max == None and tr_min == None:
            tr_max = np.max(band_arr)
            tr_min = np.min(band_arr)
        else:
            if tr_max < np.max(band_arr):
                tr_max = np.max(band_arr)
            if tr_min > np.min(band_arr):
                tr_min = np.min(band_arr)

    return tr_min, tr_max
