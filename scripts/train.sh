#!/bin/bash

# test run on 23.01.2024 - 21.26.
# settings
device=2
trainer=basic

# configurations of experiment
config_file=./configs/stainer_basic_cmp/exp3.yaml
echo "Starting training on device: $device"

# training
CUDA_VISIBLE_DEVICES=$device    \
python train.py                 \
    --train_dir   ./data/train  \
    --val_dir     ./data/val    \
    --exp_root    ./experiments-4-batch-size \
    --config_file $config_file  \
    --trainer     $trainer
