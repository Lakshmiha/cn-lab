echo "Enter first file:"
read file1
echo "Enter second file:"
read file2

if [[ -f "$file1" && -f "$file2" ]]; then
	echo "Comparing $file1 and $file2..."
	diff "$file1" "$file2"
	if [[ $? -eq 0 ]]; then
		echo "The files are identical.."
	else
		echo "The files are different.."
	fi
else
	echo "One or both files does not exist!!"
fi

