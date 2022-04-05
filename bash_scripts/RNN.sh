#!/bin/bash

echo "************************* RNN_rms_0 *************************" 
NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0
test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0
predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0 --checkpoint 1 --classes rms_0
predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/pred_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0 --checkpoint 1 --classes rms_0

for i in 1 2 3 4 5 6 7 8 9 10; do
    echo "************************* RNN_thk_$i *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion_"$i".yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i"
    test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion_"$i".yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i"
    predict --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion_"$i".yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i" --checkpoint 1 --classes thk_"$i"
    predict --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/pred_"$i".yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i" --checkpoint 1 --classes thk_"$i"

    echo "************************* RNN_rms_$i *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_"$i".yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i"
    test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_"$i".yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i"
    predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_"$i".yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i" --checkpoint 1 --classes rms_"$i"
    predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/pred_"$i".yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i" --checkpoint 1 --classes rms_"$i"
done