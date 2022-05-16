# Deep Learning for Sea Ice Roughness/Thickness Prediction
Please find the [paper](https://docs.google.com/document/d/e/2PACX-1vT3N8OK0cjIm21M4RgjIf4m52Wd-oUh8m3F8wyCZIC8Sugg1X3fv37H7uICBepNQ1auSP7xMSZSVySE/pub) for further details.

**Authors**: [Sangwon Lim](https://github.com/sum1lim) and [Omar Kawach](https://github.com/omarkawach/omarkawach)

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

## Processes

#### create_dataset
Creates training and test datasets based on the configurations provided.
```
# To run all configurations
$ create_dataset --config ./Configs/Dataset_configs/*
# To run specific configuration
$ create_dataset --config ./Configs/Dataset_configs/thickness.yml
```

#### CAE
3D-CAE processing based on configurations.
```
# To run all configurations
$ CAE --config ./Configs/CAE_configs/*
# To run specific configuration
$ CAE --config ./Configs/CAE_configs/CAE.yml
```
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/CAE.png)

#### CAE.sh
Content of `CAE.sh`:
```
#!/bin/bash

CAE --config ./Configs/CAE_configs/*

for parent_dir in thk rms; do 
    for file in CAE SOBEL_CAE canny_CAE; do
        echo "************************* ./data/"$parent_dir"_tr_data/"$file".csv *************************" 
        normalize_csv --input ./data/"$parent_dir"_tr_data/"$file".csv --std-data ./data/"$parent_dir"_tr_data/"$file".csv
        normalize_csv --input ./data/"$parent_dir"_te_data/"$file".csv --std-data ./data/"$parent_dir"_tr_data/"$file".csv    
    done
done
```
To run the script:
```
$ sh ./bash_scripts/CAE.sh
```

#### NN_regression / NN_classification
Training processes for Deep Neural Network regression and classification.
```
$ NN_classification --ml-config ./Configs/ML_configs/NN_type_class/CNN.yml --result-dir ./results/NN_type_class/CNN
$ NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/FYI_MYI.yml --result-dir ./results/NN_thk_regr/FYI_MYI
```
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/NN.png)
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/CNN.png)

#### train.sh
Content of `train.sh`:
```
#!/bin/bash

for file in CNN CNN_spk CAE CAE_spk backscatter; do
    echo "************************* NN_type_class/$file *************************" 
    NN_classification --ml-config ./Configs/ML_configs/NN_type_class/"$file".yml --result-dir ./results/NN_type_class/"$file"
    test_classification --ml-config ./Configs/ML_configs/NN_type_class/"$file".yml --result-dir ./results/NN_type_class/"$file"
done
boxplot --result-dir ./results/NN_type_class/ --model-type classification --methods CNN CNN_spk CAE CAE_spk backscatter

for file in FYI_MYI FYI_MYI_likelihood; do
    echo "************************* NN_thk_regr/$file *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$file".yml --result-dir ./results/NN_thk_regr/"$file"
    test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$file".yml --result-dir ./results/NN_thk_regr/"$file"
done
boxplot --result-dir ./results/NN_thk_regr --model-type regression --methods FYI_MYI FYI_MYI_likelihood

for file in FYI_MYI FYI_MYI_likelihood; do
    echo "************************* NN_rms_regr/$file *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$file".yml --result-dir ./results/NN_rms_regr/"$file"
    test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$file".yml --result-dir ./results/NN_rms_regr/"$file"
done
boxplot --result-dir ./results/NN_rms_regr --model-type regression --methods FYI_MYI FYI_MYI_likelihood
```
To run the script:
```
$ sh ./bash_scripts/train.sh
```

#### ResNet.sh
Content of `ResNet.sh`:
```
#!/bin/bash

echo "************************* ResNet_rms_0 *************************" 
NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/recursion_0.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_0
test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/recursion_0.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_0
predict --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/recursion_0.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_0 --checkpoint 1 --classes rms_0 --output-dir ./results/NN_rms_regr/ResNet
predict --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/pred_0.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_0 --checkpoint 1 --classes rms_0 --output-dir ./results/NN_rms_regr/ResNet

for i in {1..50}; do
    echo "************************* ResNet_thk_$i *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/ResNet/recursion.yml --result-dir ./results/NN_thk_regr/ResNet/recursion_"$i"
    test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/ResNet/recursion.yml --result-dir ./results/NN_thk_regr/ResNet/recursion_"$i"
    predict --ml-config ./Configs/ML_configs/NN_thk_regr/ResNet/recursion.yml --result-dir ./results/NN_thk_regr/ResNet/recursion_"$i" --checkpoint 1 --classes thk_"$i" --output-dir ./results/NN_thk_regr/ResNet
    predict --ml-config ./Configs/ML_configs/NN_thk_regr/ResNet/pred.yml --result-dir ./results/NN_thk_regr/ResNet/recursion_"$i" --checkpoint 1 --classes thk_"$i" --output-dir ./results/NN_thk_regr/ResNet

    echo "************************* ResNet_rms_$i *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/recursion.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_"$i"
    test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/recursion.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_"$i"
    predict --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/recursion.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_"$i" --checkpoint 1 --classes rms_"$i" --output-dir ./results/NN_rms_regr/ResNet
    predict --ml-config ./Configs/ML_configs/NN_rms_regr/ResNet/pred.yml --result-dir ./results/NN_rms_regr/ResNet/recursion_"$i" --checkpoint 1 --classes rms_"$i" --output-dir ./results/NN_rms_regr/ResNet
done
```
To run the script:
```
$ sh ./bash_scripts/ResNet.sh
```
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/framework.png)

#### test_regression / test_classification
Testing processes for regression and classification models.
```
$ test_classification --ml-config ./Configs/ML_configs/NN_type_class/CNN.yml --result-dir ./results/NN_type_class/CNN
$ test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/FYI_MYI.yml --result-dir ./results/NN_thk_regr/FYI_MYI
```
Sea ice type classification result:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/confusion_matrix.png)

Sea ice surface roughness regression result:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/rms_result.png)

Sea ice thickness regression result:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/thk_result.png)

#### boxplot
Box plots to summarize test results.
```
boxplot --result-dir ./results/NN_rms_regr/FYI --model-type regression --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
boxplot --result-dir ./results/NN_type_class/ --model-type classification --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
```

#### boxplot.sh
Content of `boxplot.sh`:
```
#!/bin/bash

for parent_dir in NN_rms_regr NN_thk_regr; do
    for child_dir in FYI FYI_MYI MYI; do
        boxplot --result-dir ./results/"$parent_dir"/"$child_dir" --model-type regression --methods backscatter corr_std GLCM CAE SOBEL_CAE
    done
done

boxplot --result-dir ./results/NN_type_class --model-type classification --methods backscatter corr_std GLCM CAE SOBEL_CAE
```
To run the script:
```
$ sh ./bash_scripts/boxplot.sh
```
![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/boxplot.png)

#### streamlining.sh
Content of `streamlining.sh`:
```
#!/bin/bash

pixel_select --x 9060 --y 9243
create_dataset --config ./Configs/streamlining_configs/dataset/*
CAE --config ./Configs/streamlining_configs/CAE/CAE_spk.yml
mkdir ./tmp/type
mkdir ./tmp/rms
mkdir ./tmp/thk
predict --result-dir ./results/NN_type_class/CNN_CAE --output-dir ./tmp/type --ml-config Configs/streamlining_configs/ML/type.yml --checkpoint 1 --classes FYI DFYI MYI

echo "************************* RNN_rms_0 *************************" 
predict --ml-config ./Configs/streamlining_configs/ML/rms/pred_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0 --checkpoint 1 --classes rms_0 --output-dir ./tmp/rms

for i in {1..50}; do
    echo "************************* RNN_thk_$i *************************" 
    predict --ml-config ./Configs/streamlining_configs/ML/thk/pred.yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i" --checkpoint 1 --classes thk_"$i" --output-dir ./tmp/thk

    echo "************************* RNN_rms_$i *************************" 
    predict --ml-config ./Configs/streamlining_configs/ML/rms/pred.yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i" --checkpoint 1 --classes rms_"$i" --output-dir ./tmp/rms
done

output_image --input ./tmp/type/updated_tr_dataset.csv --label FYI DFYI MYI --center 9243 9060
output_image --input ./tmp/rms/updated_tr_dataset.csv --label rms_23 --center 9243 9060
output_image --input ./tmp/thk/updated_tr_dataset.csv --label thk_41 --center 9243 9060
```
To run the script:
```
$ sh ./bash_scripts/streamlining.sh
```
Streamlining process:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/streamlining.png)

First year ice (FYI) probability map:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/FYI.png)

Deformed first year ice (DFYI) probability map:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/DFYI.png)

Multi-year ice (MYI) probability map:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/MYI.png)

Sea ice type map:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/RGB.png)

Sea ice surface roughness map:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/rms.png)

Sea ice thickness map:

![alt text](https://github.com/sum1lim/sea-ice-SAR/blob/master/images/thk.png)

