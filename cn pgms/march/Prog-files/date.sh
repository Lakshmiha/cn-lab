#!/bin/bash
current_date=$(date "+%Y-%m-%d")
current_time=$(date "+%H-%M-%S")
username=$(whoami)
current_directory=$(pwd)

echo "Current date:$current_date"
echo "Current time:$current_time"
echo "Username:$username"
echo "Current directory:$current_directory"

