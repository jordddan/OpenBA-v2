#!/bin/bash
name=ceval_ppl_5shot
model="model_name_or_path"
input_folder="data/5shot"
current_output_folder="outputs/${model_name}_${name}"

max_length=1024
decoder_max_length=1024
batch_size=16
export MASTER_ADDR=localhost
export MASTER_PORT=1001
current_template="make_ppl_input_5_shot"

export CUDA_VISIBLE_DEVICES=0
python main.py \
    --model-path $model \
    --max-length $max_length \
    --input-folder $input_folder \
    --output-folder $current_output_folder \
    --batch-size $batch_size \
    --type $current_template \
    --add-s \
    --decoder-max-length $decoder_max_length 



