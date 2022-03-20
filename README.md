# Deep Learning for Sea Ice Roughness/Thickness Prediction

**Author**: [Sangwon Lim](https://github.com/sum1lim) and [Omar Kawach](https://github.com/omarkawach)

## Getting Started

### Docker

To avoid conflicts, the first step is to isolate this project by creating a Docker container. The docker container will have  it's own operating system, python interpreter, dependencies, scripts, etc. 

#### Install Docker

[Get Docker Desktop for Mac or Windows](https://www.docker.com/get-started/) 

#### Build and Run Docker

Open Docker Desktop and let it run in the background. 

Go to the ```sea-ice-SAR``` directory and open a terminal.

Build the Docker container by running:
```
docker build -t  sea-ice-sar .
```

Run the container:
```
docker run -v "C:/Users/omark/Documents/Spring 2022/GEOG 422/data" -t -i sea-ice-sar 
```
Bind mount

## Scripts
#### crosspol_ratio
The command takes two images, HH and HV, and calcualtes HH/HV ratio. The output `tif` image is located in the same directory of the inputs.
```
crosspol_ratio --hh ./data/SAR/2015/2015_hh.tif --hv ./data/SAR/2015/2015_hv.tif
```

#### edge_dection
The command takes an input image and generates Sobel/Canny edge detection. The output `tif` image is located in the same directory of the inputs.
```
# For Sobel edge detection
edge_detection --input ./data/SAR/2015/2015_hh.tif --method SOBEL
# For Canny edge detection
edge_detection --input ./data/SAR/2015/2015_hh.tif --method canny
```

#### create_dataset
Creates training and test datasets based on the configurations provided.
```
# To run all configurations
create_dataset --config ./Configs/Dataset_configs/*
# To run specific configuration
create_dataset --config ./Configs/Dataset_configs/roughness_aggr.yml
```

#### CAE
3D-CAE processing based on configurations.
```
# To run all configurations
CAE --config ./Configs/CAE_configs/*
# To run specific configuration
CAE --config ./Configs/CAE_configs/rms.yml
```
#### boxplot
Box plots to summarize test results.
```
boxplot --result-dir ./results/NN_rms_regr/FYI --model-type regression --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
boxplot --result-dir ./results/NN_type_class/ --model-type classification --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
```