#!/bin/bash

for parent_dir in FYI FYI_MYI MYI; do 
    for file in ./Configs/ML_configs/NN_rms_regr/"$parent_dir"/*; do
        if [ -f "$file" ]; then
            echo "************************* $file *************************" 
            NN_regression --ml-config "$file" --result-dir ./results/NN_rms_regr/"$parent_dir"
            test_regression --ml-config "$file" --result-dir ./results/NN_rms_regr/"$parent_dir"
        fi
    done
done

for parent_dir in FYI FYI_MYI MYI; do 
    for file in ./Configs/ML_configs/NN_thk_regr/"$parent_dir"/*; do
        if [ -f "$file" ]; then
            echo "************************* $file *************************" 
            NN_regression --ml-config "$file" --result-dir ./results/NN_thk_regr/"$parent_dir"/"$child_dir"
            test_regression --ml-config "$file" --result-dir ./results/NN_thk_regr/"$parent_dir"/"$child_dir"
        fi
    done
done

for file in ./Configs/ML_configs/NN_type_class/*; do 
    if [ -f "$file" ]; then
        echo "************************* $file *************************" 
        NN_classification --ml-config "$file" --result-dir ./results/NN_type_class
        test_classification --ml-config "$file" --result-dir ./results/NN_type_class
    fi
done