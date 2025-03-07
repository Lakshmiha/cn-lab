#!/bin/bash
echo "Enter a number:"
read number
reverse=0
while [ $number -gt 0 ]
do
	last_digit=$((number % 10))
	reverse=$((reverse * 10+last_digit))
	number=$((number/10))

done
echo "Reversed number is:$reverse"
