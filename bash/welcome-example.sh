#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#Task 1    #
##############
USER="$USER"
##############
#Task 2     #
##############
hostname="$(hostname)"
#############
#Task 3   #
#############
day=`date +%A`
time=`date +"%I:%M %p"`
#############
#Task 4    #
#############
test Sunday = "`date +%A`" && title=Domingo
test Monday = "`date +%A`" && title=Lunes
test Tuesday = "`date +%A`" && title=Martes
test Wednesday = "`date +%A`" && title=Miercoles
test Thursday = "`date +%A`" && title=Jueves
test Friday = "`date +%A`" && title=Viernes
test Saturday = "`date +%A`" && title=Sabado
#Time and display

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $USER!"
It is '$day' at '$time'.

EOF
