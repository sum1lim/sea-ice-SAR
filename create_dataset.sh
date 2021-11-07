#!/bin/bash

create_dataset --config ./Configs/Dataset_configs/roughness_c5.yml 
create_dataset --config ./Configs/Dataset_configs/thickness_c5.yml 

create_dataset --config ./Configs/Dataset_configs/roughness_hh.yml 
create_dataset --config ./Configs/Dataset_configs/thickness_hh.yml 

create_dataset --config ./Configs/Dataset_configs/roughness_hv.yml 
create_dataset --config ./Configs/Dataset_configs/thickness_hv.yml 

create_dataset --config ./Configs/Dataset_configs/roughness_hv_std5.yml 
create_dataset --config ./Configs/Dataset_configs/thickness_hv_std5.yml 

create_dataset --config ./Configs/Dataset_configs/roughness_hh_std5.yml 
create_dataset --config ./Configs/Dataset_configs/thickness_hh_std5.yml 

create_dataset --config ./Configs/Dataset_configs/roughness_hv_hh.yml 
create_dataset --config ./Configs/Dataset_configs/thickness_hv_hh.yml 
