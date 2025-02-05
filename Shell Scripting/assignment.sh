#!/bin/sh
#Author: Jayanth Roy
#Purpose: practice assignment
#Usage: ./assignment.sh

echo "Enter 3 subject marks Maths, Science, Computers: "
read -r math sci comp

avg_of=0

if ((math > 30)) && ((sci > 30)) && ((comp > 30)); then
    sum_of=$((math+sci+comp))
    avg_of=$((sum_of/3))
    if [ "$avg_of" -ge 80 ]; then
        echo "Distinction!"
    elif [ "$avg_of" -ge 60 ]; then
        echo "First Class!"
    elif [ "$avg_of" -ge 40 ]; then
        echo "Second Class!"
    else
        echo "Passed!"
    fi
else
    echo "Not up to the mark : $avg_of"
fi