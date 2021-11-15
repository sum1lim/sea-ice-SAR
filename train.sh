#!/bin/bash

for file in ./Configs/ML_configs/NN_rms_regr/*; do 
    if [ -f "$file" ]; then
        echo "************************* $file *************************" 
        NN_regression --ml-config "$file" --result-dir ./results/NN_rms_regr
        test_regression --ml-config "$file" --result-dir ./results/NN_rms_regr
    fi
done

for file in ./Configs/ML_configs/NN_thk_regr/*; do 
    if [ -f "$file" ]; then
        echo "************************* $file *************************" 
        NN_regression --ml-config "$file" --result-dir ./results/NN_thk_regr
        test_regression --ml-config "$file" --result-dir ./results/NN_thk_regr
    fi
done

for file in ./Configs/ML_configs/NN_thk_class/*; do 
    if [ -f "$file" ]; then
        echo "************************* $file *************************" 
        NN_classification --ml-config "$file" --result-dir ./results/NN_thk_class
        test_classification --ml-config "$file" --result-dir ./results/NN_thk_class
    fi
done
