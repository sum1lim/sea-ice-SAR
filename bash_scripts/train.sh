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

