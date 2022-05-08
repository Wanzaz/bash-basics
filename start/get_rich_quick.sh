#!/bin/bash

# Notes:
# chmod +x get_rich_quick.sh - to be able to execute the program
# echo $RANDOM - prints out random number
# echo $HOSTNAME - prints out yours machine name
# echo $(( 2 + 3 ))

echo "What is your name? "
read name

echo "How old are you? "
read age

echo "Hello $name, you are $age years old."
sleep 2
echo "Calculating"
echo ".........."
echo "**........"
echo "****......"
echo "******...."
echo "********.."
echo "**********"


get_rich=$((( $RANDOM % 15 ) + $age ))
echo "$name, you will become a billionare when you are $get_rich years old"

# export twitter - in your machine as a variable in our code
# if you want to have permanent variable put it in .bashrc
# echo $twitter


