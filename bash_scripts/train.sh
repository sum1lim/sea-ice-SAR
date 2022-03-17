#!/bin/bash

for file in backscatter_spk backscatter CAE_spk CAE; do
    echo "************************* NN_type_class/$file *************************" 
    NN_classification --ml-config ./Configs/ML_configs/NN_type_class/"$file" --result-dir ./results/NN_type_class
    test_classification --ml-config ./Configs/ML_configs/NN_type_class/"$file" --result-dir ./results/NN_type_class
done
boxplot --result-dir ./results/NN_type_class/ --model-type classification --methods backscatter_spk backscatter CAE_spk CAE

for parent_dir in FYI_MYI; do 
    for file in backscatter_spk backscatter CAE_spk CAE; do
        echo "************************* NN_rms_regr/$parent_dir/$file *************************" 
        NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_rms_regr/"$parent_dir"
        test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_rms_regr/"$parent_dir"
    done
    boxplot --result-dir ./results/NN_rms_regr/"$parent_dir" --model-type regression --methods backscatter_spk backscatter CAE_spk CAE
done

for parent_dir in FYI_MYI; do 
    for file in backscatter_spk backscatter CAE_spk CAE; do
        echo "************************* NN_thk_regr/$parent_dir/$file *************************" 
        NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_thk_regr/"$parent_dir"/"$child_dir"
        test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_thk_regr/"$parent_dir"/"$child_dir"
    done
    boxplot --result-dir ./results/NN_thk_regr/"$parent_dir" --model-type regression --methods backscatter_spk backscatter CAE_spk CAE
done
