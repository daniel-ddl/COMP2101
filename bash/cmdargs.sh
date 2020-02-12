#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
verbose="OFF"
debug="no"
myargs=()

# loop through the command line arguments
while [ $# -gt 0 ]; do
    case $1 in
      -h | --help)
        echo "$0 [-h|--help] [-v] [-d N] Debug needs a single digit number."
        exit
        ;;
      -v | --verbose)
        verbose=ON

        ;;
      -d )
        debug=yes
        echo "Debug is set to 'Yes'"
          if [ $# -gt 1 ]; then
            debugnum=$2
          fi
          nine=9
          if [[ $debugnum -gt $nine  ]] ; then
             echo "ERROR: You did not give a single digit number type -h | --help for more info"
             exit
           elif [[ $debugnum -eq ""  ]] ; then
             echo "ERROR: You did not give a single digit number type -h | --help for more info"
             exit
           elif [[ $debugnum -lt $nine  ]] ; then
             number2="The Debug Number is $debugnum"
          fi
          ;;
      * )
            echo "Did not recognize debug number."
          ;;
      esac


  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"


# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
number=$number2
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label

echo "============"
echo " "
echo "Verbose mode is $verbose"
if  [ "$debug" = "no" ]; then
   echo "Debug is OFF"
 else
    echo "Debug is ON"
fi
echo $number

echo "This is what you typed:"
echo "${myargs[@]}"
#for myargs in ${myargs[@]}; do
#  echo $myargs
#done
#    echo "Verbose mode is $verbose"
#fi
