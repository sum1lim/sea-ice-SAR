#!/bin/bash

for file in ./Configs/ML_configs/NN_type_class/*; do 
    if [ -f "$file" ]; then
        echo "************************* $file *************************" 
        NN_classification --ml-config "$file" --result-dir ./results/NN_type_class
        test_classification --ml-config "$file" --result-dir ./results/NN_type_class
    fi
done
boxplot --result-dir ./results/NN_type_class/ --model-type classification --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE

for parent_dir in FYI FYI_MYI MYI; do 
    for file in backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE; do
        echo "************************* NN_rms_regr/$parent_dir/$file *************************" 
        NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_rms_regr/"$parent_dir"
        test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_rms_regr/"$parent_dir"
    done
    boxplot --result-dir ./results/NN_rms_regr/"$parent_dir" --model-type regression --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
done

for parent_dir in FYI FYI_MYI MYI; do 
    for file in backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE; do
        echo "************************* NN_thk_regr/$parent_dir/$file *************************" 
        NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_thk_regr/"$parent_dir"/"$child_dir"
        test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/"$parent_dir"/"$file".yml --result-dir ./results/NN_thk_regr/"$parent_dir"/"$child_dir"
    done
    boxplot --result-dir ./results/NN_thk_regr/"$parent_dir" --model-type regression --methods backscatter corr_std GLCM CAE SOBEL_CAE canny_CAE
done
