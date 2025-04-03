#!/bin/bash
echo "Enter a file:"
read file
line_number=3
sed -i "${line_number}d" "$file"

