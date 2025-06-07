#!/bin/bash

# Prompt the user to enter the limit
echo "Enter the limit (n):"
read n

echo "Odd numbers up to $n are:"

# Initialize counter
i=1

# Loop while i is less than or equal to n
while [ $i -le "$n" ]; do
  echo "$i"
  i=$((i + 2)) # Increment by 2 to get the next odd number
done#!/bin/bash

# Prompt the user to enter the limit
echo "Enter the limit (n):"
read n

echo "Odd numbers up to $n are:"

# Loop from 1 up to n, incrementing by 2
for (( i=1; i<=n; i+=2 )); do
  echo "$i"
done
