#!/bin/bash
function num_digits(){
	echo ${#1}
}

function armstrong_sum(){
	num=$1
	power=$2
	sum=0
	while [ $num -gt 0 ];
	do
		digit=$((num % 10))
		sum=$((sum + digit ** power))
		num=$((num / 10))
	done
	echo $sum
}

echo "Enter a number:"
read number

number_of_digits=$(num_digits $number)
sum_of_digits=$(armstrong_sum $number $number_of_digits)

if [ $sum_of_digits -eq $number ]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi

