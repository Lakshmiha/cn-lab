#!/bin/bash
echo "enter a file:"
read file
echo "Enter the text to append:"
read append_text
sed -i "/\.$/a $append_text" "$file"
echo "The text appended to file '$file'"

