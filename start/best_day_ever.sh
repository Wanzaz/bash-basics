#!/bin/bash

#name="Patricia"
#echo "What is your name?"
#read name

name=$1 #positional parameter (a.k.a argument)
# ./name.sh Abbey
compliment=$2

user=$(whoami)
whereami=$(pwd)
date=$(date)


echo "God Morning $name"
sleep 1
echo "You're looking good today $name!!"
sleep 1
echo "You have the best $compliment I've ever seen $name"
sleep 2

echo "You are currently loggen in as $user and you are in the directory $whereami. Also today is: $date"
