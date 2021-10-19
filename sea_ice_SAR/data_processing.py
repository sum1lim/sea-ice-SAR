import os
import rasterio
import statistics
from osgeo import gdal
from .utils import get_pixel


def create_dataset(expert_data, features_dir):
    features_files = os.listdir(features_dir)
    for iteration, ff in enumerate(features_files):
        if not ff.endswith(".tif"):
            break

        print(f"Reading {features_dir}/{ff}")
        ds = gdal.Open(f"{features_dir}/{ff}")
        raster = rasterio.open(f"{features_dir}/{ff}")
        band_arr = raster.read(1)

        if iteration == 0:
            pixels = {}
            for datum in expert_data:
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


    return pixels
