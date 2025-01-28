#!/bin/bash
#Author: Jayanth Roy
#Purpose: Practice if square bracket
#Usage: ./ if_square_bracket.sh


file=$1
if [ -f "$file" ]; then
	echo "file access $file"
else
	echo "file doesnot exist"
fi

file=$1
if [[ -f $file ]]; then
	echo "file access $file"
else
	echo "file doesnot exist"
fi