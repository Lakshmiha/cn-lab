#!/bin/bash
echo "Enter a file:"
read file

if [ ! -e "$file" ]; then
	echo "File does not exists!!"
fi

if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
	echo "$file has read,write and execute permissions!!"
else
	echo"$file has no permissions"
	echo "Permissions breakdown:"
	[ -r "$file" ] && echo "readable" || echo "Not readable"
	[ -w "$file" ] && echo "writable" || echo "Not writeable"
	[ -x "$file" ] && echo "Executable" || echo "Not executable"
fi

