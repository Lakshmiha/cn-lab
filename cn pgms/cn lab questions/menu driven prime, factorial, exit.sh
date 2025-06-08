#!/bin/bash

# Function to check if a number is prime
is_prime() {
    read -p "Enter a number: " num
    if [ "$num" -le 1 ]; then
        echo "$num is not a prime number."
        return
    fi
    for ((i=2; i<=num/2; i++)); do
        if (( num % i == 0 )); then
            echo "$num is not a prime number."
            return
        fi
    done
    echo "$num is a prime number."
}

# Function to calculate factorial
factorial() {
    read -p "Enter a non-negative integer: " num
    if [ "$num" -lt 0 ]; then
        echo "Factorial is not defined for negative numbers."
        return
    fi
    fact=1
    for ((i=2; i<=num; i++)); do
        fact=$((fact * i))
    done
    echo "Factorial of $num is $fact"
}

# Main menu loop
while true; do
    echo "============================"
    echo "       MENU OPTIONS        "
    echo "============================"
    echo "1. Check Prime Number"
    echo "2. Calculate Factorial"
    echo "3. Exit"
    echo "============================"
    read -p "Enter your choice [1-3]: " choice

    case $choice in
        1) is_prime ;;
        2) factorial ;;
        3) echo "Exiting the script. Goodbye!"; exit 0 ;;
        *) echo "Invalid choice. Please select 1, 2, or 3." ;;
    esac
    echo
done
