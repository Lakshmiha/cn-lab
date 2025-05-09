#!/bin/bash
echo "Enter a file:"
read file
if [ ! -f $file ]; then
echo "Error:File does not exist"
exit 1
fi
echo "Enter the old word:"
read old_word
echo "Enter the new word:"
read new_word
sed -i "s/${old_word}/${new_word}/g" $file
echo "The word '${old_word}' has been replaced with '${new_word}' in $file."

