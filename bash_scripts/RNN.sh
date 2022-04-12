#!/bin/bash

echo "************************* RNN_rms_0 *************************" 
NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0
test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0
predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0 --checkpoint 1 --classes rms_0 --output-dir ./results/NN_rms_regr/RNN
predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/pred_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0 --checkpoint 1 --classes rms_0 --output-dir ./results/NN_rms_regr/RNN

for i in {1..100}; do
    echo "************************* RNN_thk_$i *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion.yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i"
    test_regression --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion.yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i"
    predict --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/recursion.yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i" --checkpoint 1 --classes thk_"$(expr $i % 5)" --output-dir ./results/NN_thk_regr/RNN
    predict --ml-config ./Configs/ML_configs/NN_thk_regr/RNN/pred.yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i" --checkpoint 1 --classes thk_"$(expr $i % 5)" --output-dir ./results/NN_thk_regr/RNN

    echo "************************* RNN_rms_$i *************************" 
    NN_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion.yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i"
    test_regression --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion.yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i"
    predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/recursion.yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i" --checkpoint 1 --classes rms_"$(expr $i % 5)" --output-dir ./results/NN_rms_regr/RNN
    predict --ml-config ./Configs/ML_configs/NN_rms_regr/RNN/pred.yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i" --checkpoint 1 --classes rms_"$(expr $i % 5)" --output-dir ./results/NN_rms_regr/RNN
done