#!/bin/bash

clear

# Collect name and numbers
echo "Enter your name:"
read name

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# Show operation menu
echo "Choose an operation:"
echo "1) Addition (+)"
echo "2) Subtraction (-)"
echo "3) Multiplication (*)"
echo "4) Division (/)"
echo "5) Odd/Even Check"

read choice

case $choice in
  1)
    result=$((num1 + num2))
    echo "Hello $name, you entered $num1 + $num2. Your Ans is $result."
    ;;
  2)
    result=$((num1 - num2))
    echo "Hello $name, you entered $num1 - $num2. Your Ans is $result."
    ;;
  3)
    result=$((num1 * num2))
    echo "Hello $name, you entered $num1 * $num2. Your Ans is $result."
    ;;
  4)
    if [ "$num2" -eq 0 ]; then
      echo "Hello $name, division by zero is not allowed."
    else
      result=$((num1 / num2))
      echo "Hello $name, you entered $num1 / $num2. Your Ans is $result."
    fi
    ;;
  5)
    if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
      echo "Please enter valid integers for Odd/Even check."
    else
      if [ $((num1 % 2)) -eq 0 ]; then
        even1="even"
      else
        even1="odd"
      fi

      if [ $((num2 % 2)) -eq 0 ]; then
        even2="even"
      else
        even2="odd"
      fi

      echo "You entered $num1 and $num2. Your Ans is $num1 is $even1 and $num2 is $even2."
    fi
    ;;
  *)
    echo "Invalid choice."
    ;;
esac
