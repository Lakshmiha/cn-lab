#!/bin/bash
is_palindrome(){
	str=$1
	len=${#str}
	for ((i=0;i<len/2;i++))
	do
		if [ "${str:i:1}" != "${str:len-i-1:1}" ]; then
			echo "The string '$str' is not a palindrome"
			return
		fi
	done
	echo "The string '$str' is palindrome"
}
read -p "Enter a string:" input_str
is_palindrome $input_str

