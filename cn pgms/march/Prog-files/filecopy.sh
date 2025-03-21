#!/bin/bash
echo "Enter one file:"
read file1
echo "Enter second file:"
read file2

if [ ! -e "$file1" ] || [ ! -e "$file2" ]; then
	echo "Files does not exist.."
fi

cp "$file1" "$file2"
echo "The contents of "$file1" have copied to "$file2" "


