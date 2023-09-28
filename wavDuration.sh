#!/bin/bash

input_dir="/home/leo/projects/netframe/colabs/emotionsClassifier/datasets/turkish/"

for file in "$input_dir"/*.wav; do
    filename=$(basename -- "$file")
    duration=$(ffprobe -i "$file" -show_entries format=duration -v quiet -of csv="p=0")
    echo "File: $filename, Duration: $duration seconds"
done
