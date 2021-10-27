import os
import sys
import rasterio
import statistics
import numpy as np
import pandas as pd
from osgeo import gdal
from .utils import get_pixel


def configure_features(pixels, feature_li, feature_cfg):
    df = pd.DataFrame(
        np.array([features for _, features in pixels.items()]), columns=feature_li
    )

    for f in feature_li:
        for key, value in feature_cfg.items():
            if f in value:
                df = df.rename(columns={f: key}, errors="raise")

    return df


def organize_data(expert_data, features_dir):
    features_files = os.listdir(features_dir)
    feature_li = ["label"]
    for iteration, ff in enumerate(features_files):
        if not ff.endswith(".tif"):
            continue

        print(f"Reading {features_dir}/{ff}", file=sys.stdout)
        feature_li.append("".join(ff.split(".")[:-1]))
        ds = gdal.Open(f"{features_dir}/{ff}")
        raster = rasterio.open(f"{features_dir}/{ff}")
        band_arr = raster.read(1)

        if iteration == 0:
            pixels = {}
            for idx, datum in enumerate(expert_data):
                if "" in datum:
                    continue
                row, col = get_pixel(ds, datum[0], datum[1])
                if (row, col) not in pixels.keys():
                    pixels[(row, col)] = [[float(datum[2])], band_arr[row, col]]
                else:
                    pixels[(row, col)][0].append(float(datum[2]))
        else:
            for k in pixels.keys():
                row = k[0]
                col = k[1]
                pixels[k].append(band_arr[row, col])

    for k in pixels.keys():
        pixels[k][0] = statistics.mean(pixels[k][0])

    return pixels, feature_li
