#!/bin/bash

for file in CNN CNN_spk CAE CAE_spk backscatter; do
    echo "************************* NN_type_class/$file *************************" 
    NN_classification --ml-config ./Configs/ML_configs/NN_type_class/"$file".yml --result-dir ./results/NN_type_class
    test_classification --ml-config ./Configs/ML_configs/NN_type_class/"$file".yml --result-dir ./results/NN_type_class
done
boxplot --result-dir ./results/NN_type_class/ --model-type classification --methods CNN CNN_spk CAE CAE_spk backscatter

for parent_dir in FYI_MYI; do 
    for file in CNN CNN_spk CAE CAE_spk backscatter; do
        echo "************************* NN_thk_regr/$parent_dir/$file *************************" 
        NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_thk_regr/"$parent_dir"/"$file"
        test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_thk_regr/"$parent_dir"/"$file"
    done
    boxplot --result-dir ./results/NN_thk_regr/"$parent_dir" --model-type regression --methods CNN CNN_spk CAE CAE_spk backscatter
done

for parent_dir in FYI_MYI; do 
    for file in CNN CNN_spk CAE CAE_spk backscatter; do
        echo "************************* NN_rms_regr/$parent_dir/$file *************************" 
        NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_rms_regr/"$parent_dir"/"$file"
        test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_rms_regr/"$parent_dir"/"$file"
    done
    boxplot --result-dir ./results/NN_rms_regr/"$parent_dir" --model-type regression --methods CNN CNN_spk CAE CAE_spk backscatter
done
