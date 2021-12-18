#!/bin/bash

CAE --config ./Configs/CAE_configs/*

for parent_dir in thk rms; do 
    for file in CAE SOBEL_CAE canny_CAE; do
        echo "************************* ./data/"$parent_dir"_tr_data/"$file".csv *************************" 
        normalize_csv --input ./data/"$parent_dir"_tr_data/"$file".csv --std-data ./data/"$parent_dir"_tr_data/"$file".csv
        normalize_csv --input ./data/"$parent_dir"_te_data/"$file".csv --std-data ./data/"$parent_dir"_tr_data/"$file".csv    
    done
done