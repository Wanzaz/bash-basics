#/bin/bash

: ' 
echo "Do you like coffee (y/n)? " 

read coffee

if [[ $coffee == "y" ]]; then 
	echo "Nice"
else echo "Not nice"
fi '

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in
	
	1) 
		type="Samurai"
		hp=10
		attack=20
		;;
	2) 
		type="Prisoner"
		hp=20
		attack=4
		;;
	3) 
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "You chose the $type class. Your HP is $hp and your attack is $attack."


# First beast battle
beast=$(( $RANDOM % 2 ))

echo "Your fisr beast approaches. Prepare to battle. Pick a number between 0/1. (0/1)"

read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
	echo "Beast VANQUISHED!! Congrats fellow tarnished"
else
	echo "You Died"
	exit 1
fi

sleep 2

# Second beast battle
beast2=$(( $RANDOM % 10 ))

echo "Boss battle. Get scared. It's Margit. Pick a number between 0/9. (0/9)"

read tarnished

if [[ $beast2 == $tarnished || $tarnished == "coffee" ]]; then
	if [[ $USER == "wanzaz" ]]; then
		echo "Beast MARGIT!! Congrats fellow tarnished"
	fi
elif [[ $USER != "root" ]]; then
	echo "You are not the root"
else
	echo "You Died"
fi
