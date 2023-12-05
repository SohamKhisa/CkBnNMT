#!/bin/bash

python pipeline.py \
  --model_name_or_path "google/mt5-base" \
  --data_dir "dataset/train/many-to-bn" \
  --output_dir "output/many-to-bn" \
  --lr_scheduler_type="transformer" \
  --learning_rate=1 \
  --warmup_steps 5000 \
  --weight_decay 0.01 \ 
  --gradient_accumulation_steps=16  \
  --max_steps 50000 \
  --save_steps 5000 \
  --evaluation_strategy "no" \
  --logging_first_step \
  --adafactor \
  --label_smoothing_factor 0.1 \
  --max_source_length 512 \
  --max_target_length 512\
  --upsampling_factor 0.2 \
  --do_train
