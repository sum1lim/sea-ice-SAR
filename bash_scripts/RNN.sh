#!/bin/bash

echo "************************* RNN_rms_1 *************************" 
NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_1.yml --result-dir ./results/NN_rms_regr/RNN/recursion_1
test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_1.yml --result-dir ./results/NN_rms_regr/RNN/recursion_1
predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_1.yml --result-dir ./results/NN_rms_regr/RNN/recursion_1 --checkpoint 1 --classes rms_1
predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/pred_1.yml --result-dir ./results/NN_rms_regr/RNN/recursion_1 --checkpoint 1 --classes rms_1

echo "************************* RNN_thk_1 *************************" 
NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion_1.yml --result-dir ./results/NN_thk_regr/RNN/recursion_1
test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion_1.yml --result-dir ./results/NN_thk_regr/RNN/recursion_1
predict --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion_1.yml --result-dir ./results/NN_thk_regr/RNN/recursion_1 --checkpoint 1 --classes thk_1
predict --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/pred_1.yml --result-dir ./results/NN_thk_regr/RNN/recursion_1 --checkpoint 1 --classes thk_1


