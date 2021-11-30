import sys
import math
from osgeo import osr
from osgeo import gdal

wgs84_wkt = """
GEOGCS["WGS 84",
    DATUM["WGS_1984",
        SPHEROID["WGS 84",6378137,298.257223563,
            AUTHORITY["EPSG","7030"]],
        AUTHORITY["EPSG","6326"]],
    PRIMEM["Greenwich",0,
        AUTHORITY["EPSG","8901"]],
    UNIT["degree",0.01745329251994328,
        AUTHORITY["EPSG","9122"]],
    AUTHORITY["EPSG","4326"]]
"""


def get_pixel(ds, lat, lon):
    # Dataset CRS
    dataset_cs = osr.SpatialReference()
    dataset_cs.ImportFromWkt(ds.GetProjectionRef())

    # WGS84 new coordinate system
    wgs84 = osr.SpatialReference()
    wgs84.ImportFromWkt(wgs84_wkt)

    # create a transform object to convert between coordinate systems
    transform = osr.CoordinateTransformation(wgs84, dataset_cs)

    # convert lat lon to dataset CRS
    ds_coord = transform.TransformPoint(float(lat), float(lon))

    (
        xOrigin,
        xResolution,
        xRotation,
        yOrigin,
        yRotation,
        yResolution,
    ) = ds.GetGeoTransform()

    # Note that the pixel/line coordinates in the above are from (0.0,0.0) at the top left corner of the top left pixel
    # to (width_in_pixels,height_in_pixels) at the bottom right corner of the bottom right pixel.
    # The pixel/line location of the center of the top left pixel would therefore be (0.5,0.5).
    # https://gdal.org/user/raster_data_model.html#affine-geotransform
    col = int((ds_coord[0] - xOrigin) // xResolution)
    row = int((ds_coord[1] - yOrigin) // yResolution)

    return row, col


def decompose_filepath(filepath):
    """
    decompose filepath into three components:
    directory path, file name and extension
    """
    parent_directories = filepath.split("/")[:-1]
    try:
        if parent_directories[-1] == "":
            del parent_directories[-1]
        dir_path = "/".join(parent_directories)
    except IndexError:
        dir_path = None

    File = filepath.split("/")[-1]
    try:
        [filename, extension] = File.split(".")
    except ValueError:
        filename = File
        extension = None

    return (dir_path, filename, extension)


def window(raster, row, col, size=1):
    if size == 1:
        return [raster[row, col]]
    elif size > 1:
        lower_bound = math.ceil(-size / 2)
        upper_bound = math.ceil(size / 2)
        return [
            raster[row + i, col + j]
            for i in range(lower_bound, upper_bound)
            for j in range(lower_bound, upper_bound)
        ]
    else:
        print("Invalid window size", file=sys.stderr)
        sys.exit(1)


def output_tif(output_filepath, image, ds):

    [rows, cols] = image.shape
    driver = gdal.GetDriverByName("GTiff")
    outdata = driver.Create(
        output_filepath,
        cols,
        rows,
        1,
        gdal.GDT_Float64,
    )
    outdata.SetGeoTransform(ds.GetGeoTransform())
    outdata.SetProjection(ds.GetProjection())
    outdata.GetRasterBand(1).WriteArray(image)
    outdata.FlushCache()
    outdata = None
