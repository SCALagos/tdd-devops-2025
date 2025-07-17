#!/bin/bash
#This is Abibat script
echo "Welcome to bash calculator"
echo "Enter your name:" 
read name #allow user to input name
echo "Welcome $name to bash calculator"
echo "Enter the first number:"
read firstNum #enter the first number
echo "Enter the second number"
read secondNum #enter the second number
# choose an operation
echo "1. Addition (+)"
echo "2. substraction (-)"
echo "3. multiplication (*)"
echo "4. division (/)"
echo "5. check odd/even" #Check if input is even or odd
echo "choose between 1-4 for operation and 5 to check if input is odd/even"
read operation
case $operation in
1) 
result=$((firstNum + secondNum))
echo "Hello $name, you entered $firstNum + $secondNum. Your ans is $result"
;;
2)
result=$((firstNum - secondNum))
echo "Hello $name, you entered $firstNum - $secondNum. Your ans is $result"
;;
3)
result=$((firstNum * secondNum))
echo "Hello $name, you entered $firstNum * $secondNum. Your ans is $result"
;;
4)
if [ "secondNum" -eq 0]; then
echo "Error"
else
result=$((firstNum / $secondNum))
echo "Hello $name, you entered $firstNum / $secondNum. Your ans is $result"
fi
;;
5)
if [[ $((firstNum %2)) -eq 0 && $((secondNum %2)) -eq 0 ]]; then
echo "You entered $firstNum and $secondNum. Your ans is $firstNum is even and $secondNum is even"
elif [[ $((firstNum %2)) -ne 0 && $((secondNum %2)) -eq 0 ]]; then
echo "You entered $firstNum and $secondNum. Your ans is $firstNum is odd and $secondNum is even"
elif [[ $((firstNum %2)) -eq 0 && $((secondNum %2)) -ne 0 ]]; then
echo "You entered $firstNum and $secondNum. Your ans is $firstNum is even and $secondNum is odd"
else [[ $((firstNum % 2)) -ne 0 && $((secondNum %2)) -ne 0 ]];
echo "You entered $firstNum and $secondNum. Your ans is $firstNum is odd and $secondNum is odd"
fi
;;
esac




