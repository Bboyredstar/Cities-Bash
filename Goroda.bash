#!/bin/bash

list=()


readarray -t list < ./largest_cities.txt

enter=""

answered="${list[RANDOM % ${#list[*]}]}"
used=()
found=0

used=" $answered "



while true
do
prontf "Enter the city:"
read enter
enter="${enter,,}"


if [[ "$enter" == "exit" ]]
then
echo "Exit!"	
break
fi



	if [[ "${enter:0:1}" == "${ANSWERED:$((${#ANSWERED}-1)):1}" ]]
	then
		if [[ "$used" =~ " ${enter} " ]]
		then
		echo "Alerady named! Try again:"
		continue
		else
		used+="$enter"
		for(( i=0; "$i" < "${#list[*]}"; ++i ))
		do
		if [[ "${list[$i]:0:1}" == ${enter:$((${#enter}-1)):1} ]]
		then
		ANSWERED="${list[$i]}"
		used+="$ANSWERED"
		done
		fi
	echo $ANSWERED
	else
	printf "Error! Your city must begin with: "
	echo "${ANSWERED:$((${#ANSWERED}-1)):1}" 
	continue
	fi

	if [[ "${#used[@]}" == "${#list[@]}"]]
	then
	echo "You win" 
	break



done
