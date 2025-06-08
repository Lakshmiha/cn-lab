#!/bin/bash

# Get the current year
current_year=$(date +"%Y")

# Ask the user for the final year
read -p "Enter the final year: " final_year

# Check if the input is a valid year
if ! [[ "$final_year" =~ ^[0-9]{4}$ ]] || [ "$final_year" -lt "$current_year" ]; then
    echo "Invalid year entered. Please enter a valid future year."
    exit 1
fi

echo "Leap years from $current_year to $final_year are:"

# Loop from current year to final year
for (( year=current_year; year<=final_year; year++ ))
do
    # Check leap year condition
    if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
        echo "$year"
    fi
done
