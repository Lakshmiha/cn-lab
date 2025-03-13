#!/bin/bash
echo "Enter a 5 digit number:"
read number
reverse=0
if ! [[ "$number" =~ ^[0-9]{5}$ ]]; then
    echo "Invalid input. Please enter a valid 5-digit number."
    exit 1
fi

while [ $number -gt 0 ]
do
	last_digit=$((number % 10))
	reverse=$((reverse * 10+last_digit))
	number=$((number/10))

done
echo "Reversed number is:$reverse"
