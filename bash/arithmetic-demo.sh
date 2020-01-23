#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#Task 1
echo "Input you first number: "
read firstnum
echo "Input you second number: "
read secondnum
echo "Input you third number: "
read thirdnum

#Task 2
sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum * secondnum * thirdnum))
#fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
# More precisely, it is fpdividend

cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum times $secondnum times $thirdnum is $product
EOF
