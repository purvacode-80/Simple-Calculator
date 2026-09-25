#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

# Get user input

read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount

total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results

echo ""
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total_amount"

