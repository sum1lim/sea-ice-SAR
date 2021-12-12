#!/bin/bash

for parent_dir in NN_rms_regr NN_thk_regr; do
    for child_dir in FYI FYI_MYI MYI; do
        boxplot --result-dir ./results/"$parent_dir"/"$child_dir" --model-type regression --methods backscatter corr_std GLCM CAE SOBEL_CAE
    done
done

boxplot --result-dir ./results/NN_type_class --model-type classification --methods backscatter corr_std GLCM CAE SOBEL_CAE
