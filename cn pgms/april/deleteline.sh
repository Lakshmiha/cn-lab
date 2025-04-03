#!/bin/bash
echo "enter the file:"
read file
if [! -f $file ]; then
	echo "Error:file does not exist!!"
	exit 1
fi

echo "enter the word to search and delete:"
read search_word

sed -i "/${search_word}/d" $file

echo "Lines containing the word '${search_word}' has been deleted from ${file}."
