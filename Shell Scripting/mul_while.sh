#1/bin/bash
#Author: Jayanth Roy
#Purpose: learnng while loop
#Usage: ./mul_while.sh


echo "enter no"
read -r no
echo "multiplication table"

counter=1
while [ $counter -le 10 ]
do
	mult=`expr $no \* $counter`
	echo "$no * $counter = $mult"
	counter=`expr $counter + 1`
done


echo "enter val"
read -r val
if(( $val >= 20 && $val <= 40 )); then
	echo "Good"
elif (( $val < 20 )); then
	echo "Removed"
else
	echo "Excellent"
fi