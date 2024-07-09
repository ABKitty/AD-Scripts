#!/bin/bash

# Check if a file is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

input_file=$1

# Check if the file exists
if [ ! -f "$input_file" ]; then
    echo "File not found!"
    exit 1
fi

# Read numbers from the file and join them with commas
output=$(paste -sd, "$input_file")

# Print the result
echo "$output"
