#!/bin/bash
# Simple Interest Calculator
# Author: JK-0096

# Prompt the user for input
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (in %): " rate
read -p "Enter the time period (in years): " time

# Validate inputs
if [[ $principal -lt 0 || $rate -lt 0 || $time -lt 0 ]]; then
    echo "Error: All inputs must be non-negative numbers."
    exit 1
fi

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "Simple Interest: $simple_interest"
