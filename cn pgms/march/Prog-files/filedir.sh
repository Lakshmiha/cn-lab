#!/bin/bash
echo "Enter a file directory:"
read filename

if [ -d "$filename" ]; then
	echo "$filename is a directory"
else
	echo "$filename is not a directory"
fi

