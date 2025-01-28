#!/bin/bash
#Author: Jayanth Roy
#Purpose: Practice for loop
#Usage: ./ for_loop.sh

fruits=("apple" "banana" "orange" "mango")
for fruit in "${fruits[@]}"; do
	echo "I like to eat $fruit"
done

fruits=("apple" "banana" "orange" "mango")
for i in "${!fruits[@]}"; do
	echo "I like to eat $i ${fruits[$i]}"
done


fruits=("apple" "banana" "orange" "mango")
even_var="Yes"
for i in "${!fruits[@]}"; do
	if [ even_var "Yes" ]; then
		even_var="No"
		echo "I like to eat ${fruits[$i]}"
	else
		even_var="Yes"
		echo "I dont like to eat ${fruits[$i]}"
done