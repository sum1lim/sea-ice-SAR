import csv
from osgeo import gdal
from .utils import get_coord


def create_dataset(te_data):
    ds = gdal.Open("./data/SAR/2016_c5.tif")

    csv_reader = csv.reader(te_data)
    coordinates = [(row[3], row[2]) for row in csv_reader]

    header = True
    pixels = set()
    for latlon in coordinates:
        if header:
            header = False
            continue
        pixels.add(get_coord(ds, latlon[0], latlon[1]))

    print(pixels)
    print(len(pixels))
