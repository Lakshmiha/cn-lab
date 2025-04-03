#!/bin/bash
echo "enter a file:"
read file

if [ ! -f "$file" ]; then
  echo "Error: File '$file' not found."
  exit 1
fi

echo "Enter the text to append:"
read append_text
# Append the text to each line using sed
sed -i "s/$/${append_text}/" "$file"

echo "Text '$text_to_append' appended to every line in '$file'."
