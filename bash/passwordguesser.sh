#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)
read -p "you have 5 Attempts, This is Attempt 1, Guess a password: " myString
#echo $answer
referenceString="password"

###task2#### improve rewriting if command

if [ $myString = $referenceString ]; then
    echo "Correct, Good Guess."
elif [ $myString != $referenceString ]; then
    read -p "Sorry try again, Attempt 2, Guess a password: " myString
fi
if [ $myString = $referenceString ]; then
    echo "i knew you could do it."
elif [ $myString != $referenceString ]; then
    read -p "Sorry try again, Attempt 3, Guess a password: " myString
fi
if [ $myString = $referenceString ]; then
    echo "look at you, mister smart."
elif [ $myString != $referenceString ]; then
    read -p "Sorry try again, Attempt 4, Guess a password: " myString
fi
if [ $myString = $referenceString ]; then
    echo "you are amazing."
elif [ $myString != $referenceString ]; then
    read -p "Sorry try again, Attempt 5, Guess a password: " myString
fi
if [ $myString = $referenceString ]; then
    echo "i knew you had it in you."
elif [ $myString != $referenceString ]; then
    echo "Sorry you are out if tries"
fi







#&& echo "Guess a password" && read myString
