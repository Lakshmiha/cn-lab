#!/bin/bash
echo "Enter a file:"
read file

if [ ! -e "$file" ]; then
	echo "$file does not exist!!"
fi

if [ -s "$file" ]; then
	echo "$file is not empty"
else
	echo "$file is empty!!"
fi

