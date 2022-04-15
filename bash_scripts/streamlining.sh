#!/bin/bash

pixel_select --x 9060 --y 9243
create_dataset --config ./Configs/streamlining_configs/dataset/*
CAE --config ./Configs/streamlining_configs/CAE/CAE_spk.yml
mkdir ./tmp/type
mkdir ./tmp/rms
mkdir ./tmp/thk
predict --result-dir ./results/NN_type_class/CNN --output-dir ./tmp/type --ml-config Configs/streamlining_configs/ML/type.yml --checkpoint 8 --classes FYI DFYI MYI

echo "************************* RNN_rms_0 *************************" 
predict --ml-config ./Configs/streamlining_configs/ML/rms/pred_0.yml --result-dir ./results/NN_rms_regr/RNN/recursion_0 --checkpoint 1 --classes rms_0 --output-dir ./tmp/rms

for i in {1..100}; do
    echo "************************* RNN_thk_$i *************************" 
    predict --ml-config ./Configs/streamlining_configs/ML/thk/pred.yml --result-dir ./results/NN_thk_regr/RNN/recursion_"$i" --checkpoint 1 --classes thk_"$i" --output-dir ./tmp/thk

    echo "************************* RNN_rms_$i *************************" 
    predict --ml-config ./Configs/streamlining_configs/ML/rms/pred.yml --result-dir ./results/NN_rms_regr/RNN/recursion_"$i" --checkpoint 1 --classes rms_"$i" --output-dir ./tmp/rms
done

output_image --input ./tmp/type/updated_tr_dataset.csv --label FYI DFYI MYI --center 9243 9060
output_image --input ./tmp/rms/updated_tr_dataset.csv --label rms_22 --center 9243 9060
output_image --input ./tmp/thk/updated_tr_dataset.csv --label thk_33 --center 9243 9060