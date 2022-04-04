# Deep Learning for Sea Ice Roughness/Thickness Prediction

*Development paused due to issue with TensorFlow protobuf files in Docker*

**Author**: [Omar Kawach](https://github.com/omarkawach) and [Sangwon Lim](https://github.com/sum1lim) 

## Getting Started

The assumption in these steps is that you have downloaded the repository and are working from the ```sea-ice-SAR``` directory. 

### OPTIONAL: Ensure script files are UNIX friendly
Download [Python3](https://www.python.org/downloads/) on your local machine.

Run ```python3 ./scripts/EOL_converter.py```

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
docker run -v "C:/absolute_path_to_your_data_folder:/data" -t -i sea-ice-sar 
```

You must include the absolute path to your data in the command. 

:/data is where your data folder will be mounted.

This is so that all outputs may be saved to your local machine

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

## Resources

[What is Docker?](https://www.ibm.com/cloud/learn/docker)

[Docker Image vs Container](https://phoenixnap.com/kb/docker-image-vs-container)

[Docker Bind Mount](https://docs.docker.com/storage/bind-mounts/)

[Docker Volume vs Bind Mount](https://blog.logrocket.com/docker-volumes-vs-bind-mounts/)
