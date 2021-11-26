#!/bin/bash

for dir in ./Configs/ML_configs/NN_rms_regr/*; do 
    if [ -d "$dir" ]; then
        for file in "$dir"/*; do
            if [ -f "$file" ]; then
                echo "************************* $file *************************" 
                NN_regression --ml-config "$file" --result-dir "$dir"
                test_regression --ml-config "$file" --result-dir "$dir"
            fi
        done
    fi
done

for dir in ./Configs/ML_configs/NN_thk_regr/*; do 
    if [ -d "$dir" ]; then
        for file in "$dir"/*; do
            if [ -f "$file" ]; then
                echo "************************* $file *************************" 
                NN_regression --ml-config "$file" --result-dir "$dir"
                test_regression --ml-config "$file" --result-dir "$dir"
            fi
        done
    fi
done

for dir in ./Configs/ML_configs/NN_thk_class/*; do 
    if [ -d "$dir" ]; then
        for file in "$dir"/*; do
            if [ -f "$file" ]; then
                echo "************************* $file *************************" 
                NN_classification --ml-config "$file" --result-dir "$dir"
                test_classification --ml-config "$file" --result-dir "$dir"
            fi
        done
    fi
done

for file in ./Configs/ML_configs/NN_type_class/*; do 
    if [ -f "$file" ]; then
        echo "************************* $file *************************" 
        NN_classification --ml-config "$file" --result-dir ./Configs/ML_configs/NN_type_class
        test_classification --ml-config "$file" --result-dir ./Configs/ML_configs/NN_type_class
    fi
done