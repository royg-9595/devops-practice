#!/bin/sh
#Author: Jayanth Roy
#Purpose: expr set command
#Usage: ./set.sh

set -x
set `date`
echo "Today is $1"
echo "Month is $2"
echo "Date is $3"
echo "Year is $4"
echo "Time is $5"
echo "AM/PM is $6"
