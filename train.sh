#!/bin/bash

for dir in FYI FYI_MYI MYI; do 
    for file in ./Configs/ML_configs/NN_rms_regr/"$dir"/*; do
        if [ -f "$file" ]; then
            echo "************************* $file *************************" 
            NN_regression --ml-config "$file" --result-dir ./results/NN_rms_regr/"$dir"
            test_regression --ml-config "$file" --result-dir ./results/NN_rms_regr/"$dir"
        fi
    done
done

for dir in FYI FYI_MYI MYI; do 
    for file in ./Configs/ML_configs/NN_thk_regr/"$dir"/*; do
        if [ -f "$file" ]; then
            echo "************************* $file *************************" 
            NN_regression --ml-config "$file" --result-dir ./results/NN_thk_regr/"$dir"
            test_regression --ml-config "$file" --result-dir ./results/NN_thk_regr/"$dir"
        fi
    done
done

for dir in FYI FYI_MYI MYI; do 
    for file in ./Configs/ML_configs/NN_thk_class/"$dir"/*; do
        if [ -f "$file" ]; then
            echo "************************* $file *************************" 
            NN_classification --ml-config "$file" --result-dir ./results/NN_thk_class/"$dir"
            test_classification --ml-config "$file" --result-dir ./results/NN_thk_class/"$dir"
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