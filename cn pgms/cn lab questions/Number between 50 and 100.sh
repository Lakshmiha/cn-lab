#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Check if the input is a valid integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a valid integer."
  exit 1
fi

# Check if the number is between 50 and 100
if (( number >= 50 && number <= 100 )); then
  echo "The number $number is between 50 and 100."
else
  echo "The number $number is NOT between 50 and 100."
fi
