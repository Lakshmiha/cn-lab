#!/bin/bash
echo "Enter an input file"
read input_file
start_line=1
end_line=3

if [ ! -f "$input_file" ]; then
	echo "Error:Input file '$input_file' not found!!"
	exit 1
fi

if [ $start_line -gt $end_line ]; then
	echo "Error:Failed to extract lines from '$input_file'."
	exit 1
fi

sed -n "${start_line},${end_line}p" "$input_file"
