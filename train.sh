#!/bin/bash

NN_regression --ml-config ./Configs/ML_configs/rms_regr* --result-dir ./results/NN_rms_regr
test_regression --ml-config ./Configs/ML_configs/rms_regr* --result-dir ./results/NN_rms_regr

NN_regression --ml-config ./Configs/ML_configs/thk_regr* --result-dir ./results/NN_thk_regr
test_regression --ml-config ./Configs/ML_configs/thk_regr* --result-dir ./results/NN_thk_regr

NN_classification --ml-config ./Configs/ML_configs/thk_class* --result-dir ./results/NN_thk_class
test_classification --ml-config ./Configs/ML_configs/thk_class* --result-dir ./results/NN_thk_class