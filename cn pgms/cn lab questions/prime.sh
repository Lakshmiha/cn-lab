#!/bin/bash

echo "Enter a number:"
read num

# Numbers less than or equal to 1 are not prime
if [ "$num" -le 1 ]; then
  echo "$num is not a prime number."
  exit 0
fi

is_prime=true

# Check for divisibility from 2 up to the square root of the number
# For efficiency, we only need to check up to the square root.
# In bash, we can approximate this by checking up to num/2 for simplicity.
# For more rigorous prime checking, consider using 'bc' for floating-point square root.
for (( i=2; i*i<=$num; i++ )); do
  if [ $((num % i)) -eq 0 ]; then
    is_prime=false
    break
  fi
done

if [ "$is_prime" = true ]; then
  echo "$num is a prime number."
else
  echo "$num is not a prime number."
fi
