#!/bin/bash
echo "enter a file:"
read file
sed 's/[0-9]*//g' "$file"
echo "Removed digits from file '$file'"

