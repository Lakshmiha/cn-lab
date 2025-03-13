#!/bin/bash
echo "Enter a digit:"
read digit
sum=0
while [ $digit -gt 0 ]
do
mod=$(( digit % 10 ))
sum=$(( sum + mod ))
digit=$(( digit / 10 ))
done

echo "Sum of digits is:$sum"

