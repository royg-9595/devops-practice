#!/bin/sh
#Author: Jayanth Roy
#Purpose: implementing regx
#Usage: ./regx.sh

numString="123456789"
if [[ $numString =~ ^1 ]]; then
    echo "$numString starts with 1"
fi

if [[ $numString =~ ^[1.0] ]]; then
    echo "$numString starts with 1"
fi
