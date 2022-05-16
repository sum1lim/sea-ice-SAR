# Deep Learning for Sea Ice Roughness/Thickness Prediction

**Author**: [Sangwon Lim](https://github.com/sum1lim)

## Getting Started

### Install the Package in a Python Virtual Environment

To avoid conflicts, the first step is to isolate this project by creating a Python virtual environment called ```venv```. The virtual environment will have it's own python interpreter, dependencies, and scripts. Commands should only be entered in a terminal that has ```venv``` active. 

#### Apple Silicon (M1)
```
sh M1_install.sh
source ~/miniforge3/bin/activate
```

#### Linux
```
python -m venv venv
source venv/bin/activate
pip install .
pip install -r requirements.txt
```

#### Windows
```
python -m venv venv
venv/Scripts/activate
pip install .
pip install -r requirements.txt
```

## Commands

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
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/CAE.png)

#### NN_regression / NN_classification
Training processes for Deep Neural Network regression and classification.
```
NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/FYI/CAE.yml --result-dir ./results/NN_rms_regr/FYI
NN_classification --ml-config ./Configs/ML_configs/NN_type_class/CAE.yml --result-dir ./results/NN_type_class
```
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/NN.png)
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/CNN.png)

#### test_regression / test_classification
Testing processes for regression and classification models.
```
test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/FYI/CAE.yml --result-dir ./results/NN_rms_regr/FYI
test_classification --ml-config ./Configs/ML_configs/NN_type_class/CAE.yml --result-dir ./results/NN_type_class
```

#### boxplot
Box plots to summarize test results.
```
boxplot --result-dir ./results/NN_rms_regr/FYI --model-type regression --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
boxplot --result-dir ./results/NN_type_class/ --model-type classification --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
```
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/results/NN_type_class/Test%20accuracy.png)
