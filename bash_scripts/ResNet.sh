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