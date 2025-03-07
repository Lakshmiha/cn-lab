#!/bin/bash
array=()
echo "Enter the number of elements in the array:"
read n
for ((i=0;i<n;i++))
do
	echo "Enter element $((i+1)):"
	read element
	array+=("$element")
done

echo "The elements in the array are:"
for element in "${array[@]}";
do
	echo "$element"
done

