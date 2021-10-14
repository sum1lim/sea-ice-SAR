import csv
from osgeo import gdal


def get_coordinates(te_data):
    csv_reader = csv.reader(te_data)
    for row in csv_reader:
        print(row)
