#!/bin/bash

# Define a valid username and password
VALID_USERNAME="admin"
VALID_PASSWORD="password123"

# Prompt for username
echo "Enter username:"
read username_input

# Prompt for password (using -s for silent input)
echo "Enter password:"
read -s password_input
echo # Newline after silent input

# Check if username and password match
if [[ "$username_input" == "$VALID_USERNAME" ]] && [[ "$password_input" == "$VALID_PASSWORD" ]]; then
    echo "Login successful!"
else
    echo "Invalid username or password."
fi
