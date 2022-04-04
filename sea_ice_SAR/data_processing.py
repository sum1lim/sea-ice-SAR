import sys
import copy
import math
import rasterio
import statistics
import numpy as np
import pandas as pd

from tqdm import tqdm
from osgeo import gdal
from .utils import get_pixel, window


def configure_features(pixels, feature_li):
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

    return df


def aggr_window(pixels, window_size=1):
    dup_pixels = copy.deepcopy(pixels)
    lower_bound = math.ceil(-window_size / 2)
    upper_bound = math.ceil(window_size / 2)

    for k in tqdm(pixels.keys()):
        # if window_size > 1:
        #     row = k[0]
        #     col = k[1]

        #     for i in range(lower_bound, upper_bound):
        #         for j in range(lower_bound, upper_bound):
        #             if i != 0 or j != 0:
        #                 try:
        #                     pixels[k][0] += dup_pixels[(row + i, col + j)][0]
        #                     pixels[k][4] += dup_pixels[(row + i, col + j)][4]
        #                 except KeyError:
        #                     continue

        pixels[k][0] = statistics.mean(pixels[k][0])

    dup_pixels = None

    return pixels


def organize_data(expert_data, SAR_data, window_size, mask_file):
    feature_li = ["label", "src_dir", "row", "col", "num_points", "mask"]

    if mask_file:
        mask_raster = rasterio.open(mask_file)
        mask_arr = mask_raster.read(1)

    ds = gdal.Open(SAR_data["File"])
    raster = rasterio.open(SAR_data["File"])

    for iteration, band in enumerate(SAR_data["Bands"].items()):
        feature_li = feature_li + [
            f"{band[1]}_{i}_{j}" for i in range(window_size) for j in range(window_size)
        ]
        band_arr = raster.read(band[0])

        if iteration == 0:
            pixels = {}
            for idx, datum in enumerate(tqdm(expert_data)):
                if "" in datum:
                    continue
                if mask_file:
                    mask_row, mask_col = get_pixel(
                        gdal.Open(mask_file), datum[0], datum[1]
                    )
                if len(datum) == 3:
                    row, col = get_pixel(ds, datum[0], datum[1])
                elif len(datum) == 5:
                    row = int(math.floor(float(datum[-2])))  # row
                    col = int(math.floor(float(datum[-1])))  # col

                try:
                    if (row, col) not in pixels.keys():
                        if mask_file:
                            try:
                                pixels[(row, col)] = [
                                    [float(datum[2])],  # label
                                    SAR_data["File"],
                                    row,
                                    col,
                                    1,
                                    int(mask_arr[mask_row, mask_col]),
                                ] + window(band_arr, row, col, window_size)
                            except IndexError:
                                pixels[(row, col)] = [
                                    [float(datum[2])],  # label
                                    SAR_data["File"],
                                    row,
                                    col,
                                    1,
                                    int(mask_arr[mask_row, mask_col]),
                                ] + [None for _ in range(window_size**2)]
                        else:
                            try:
                                pixels[(row, col)] = [
                                    [float(datum[2])],  # label
                                    SAR_data["File"],
                                    row,
                                    col,
                                    1,
                                    0,
                                ] + window(band_arr, row, col, window_size)
                            except IndexError:
                                pixels[(row, col)] = [
                                    [float(datum[2])],  # label
                                    SAR_data["File"],
                                    row,
                                    col,
                                    1,
                                    0,
                                ] + [None for _ in range(window_size**2)]
                    else:
                        pixels[(row, col)][4] += 1  # num_points
                        pixels[(row, col)][0].append(float(datum[2]))  # label
                except ValueError:
                    continue
        else:
            for k in pixels.keys():
                row = k[0]
                col = k[1]
                pixels[k] = pixels[k] + window(band_arr, row, col, window_size)

    pixels = aggr_window(pixels, window_size)

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