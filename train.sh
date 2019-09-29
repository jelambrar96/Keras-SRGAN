#!/bin/bash

DATE_STR=$(date +%Y-%m-%d_%H-%M)

MODEL_SAVE="MODEL_$DATE_STR"
OUTPUT_SAVE="OUTPUT_$DATE_STR"
LOG_SAVE="LOG_$DATE.txt"

mkdir -p $MODEL_SAVE
mkdir -p $OUTPUT_SAVE

python train.py \
--input_dir="dataset" \
--batch_size=8 \
--number_of_images=512

--input_dir="dataset" \
--output_dir=$OUTPUT_SAVE \
--model_save_dir=$MODEL_SAVE \
--batch_size=1 \
--epochs=1000 \
--number_of_images=256 \
--train_test_ratio=0.8 >> "$MODEL_SAVE/$LOG_SAVE" 2>&1 
