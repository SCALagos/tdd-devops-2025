#!/bin/bash

# Simple Calculator Script

# Ask for user's name
echo "What is your name?"
read name

# Ask for two numbers
echo "Please enter the first number:"
read num1

echo "Please enter the second number:"
read num2

# Ask user to choose an operation
echo "Choose an operation you want to do: +, -, *, /, odd-even"
read operation

# Perform calculation based on operation
if [ "$operation" == "+" ]; then
    result=$((num1 + num2))
    echo "Hello $name, you entered $num1 + $num2. Your Ans is $result."

elif [ "$operation" == "-" ]; then
    result=$((num1 - num2))
    echo "Hello $name, you entered $num1 - $num2. Your Ans is $result."

elif [ "$operation" == "*" ]; then
    result=$((num1 * num2))
    echo "Hello $name, you entered $num1 * $num2. Your Ans is $result."

elif [ "$operation" == "/" ]; then
    if [ "$num2" -ne 0 ]; then
        result=$((num1 / num2))
        echo "Hello $name, you entered $num1 / $num2. Your Ans is $result."
    else
        echo "Division by zero is not allowed."
    fi

elif [ "$operation" == "odd-even" ]; then
    # Check odd/even for num1
    if [ $((num1 % 2)) -eq 0 ]; then
        status1="even"
    else
        status1="odd"
    fi

    # Check odd/even for num2
    if [ $((num2 % 2)) -eq 0 ]; then
        status2="even"
    else
        status2="odd"
    fi

    echo "You entered $num1 and $num2. Your Ans is $num1 is $status1 and $num2 is $status2."

else
    echo "Invalid operation selected."
fi
