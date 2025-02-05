#!/bin/bash
#Author: Jayanth Roy
#Purpose: play ground
#Usage: ./play.sh

echo "Enter the string: "
read -r string
str_rev=$(echo "$string" | rev)
if [ "$string" = "$str_rev" ]; then
    echo "yes, palindrome!"
else
    echo "Not a palindrome!"
fi