#!/bin/sh
#Author: Jayanth Roy
#Purpose: learning untile
#usage: ./untile.sh


echo -e "please enter the ip address to ping\c"
read -r ip
until ping $ip
do
	echo"host in $ip is down"
	sleep 1
done
echo "host in $ip is up"
