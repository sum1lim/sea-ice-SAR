#!/bin/bash

create_dataset --config /Configs/pred.yaml
create_dataset --config /Configs/second_pred.yaml
predict --ml-config /Configs/backscatter.yml --result-dir /models/rms_backscatter --checkpoint 1 --classes rms
output_image --input /models/rms_backscatter/updated_tr_train.csv --label rms --row row --col col --center 250 250