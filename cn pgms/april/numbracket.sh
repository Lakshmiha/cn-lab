#!/bin/bash
echo "Enter a file:"
read file
sed 's/[0-9]/\\[&\\\]/g' "$file"
echo "brackets added to numbers.."

