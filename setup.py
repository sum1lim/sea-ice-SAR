from setuptools import setup

__version__ = (0, 0, 0)

setup(
    name="sea_ice_SAR",
    description="Deep Learning Architectures for Sea Ice Thickeness and Roughness Remote Sensing",
    version=".".join(str(d) for d in __version__),
    author="Sangwon Lim",
    author_email="sangwonl@uvic.ca",
    packages=["sea_ice_SAR"],
    include_package_data=True,
    scripts="""
        ./scripts/boxplot
        ./scripts/CAE
        ./scripts/create_dataset
        ./scripts/crosspol_ratio
        ./scripts/edge_detection
        ./scripts/predict
        ./scripts/output_image
    """.split(),
)
