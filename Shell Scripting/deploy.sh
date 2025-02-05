#!/bin/bash
#Author: Jayanth Roy
#Purpose: deploying a application using shell scripting
#Usage: ./ deploy.sh

sudo apt update
if [ $? -eq 0 ]; then
    echo "apt update is done !"
else
    echo "apt update isn't done !"
fi

sudo apt upgrade
if [ $? -eq 0 ]; then
    echo "apt upgrade is done !"
else
    echo "apt upgrade isn't done !"
fi

sudo apt install default-jdk
if [ $? -eq 0 ]; then
    echo "apt install jdk is done !"
else
    echo "apt install jdk isn't done !"
fi

sudo apt install wget
if [ $? -eq 0 ]; then
    echo "apt wget is done !"
else
    echo "apt wget isn't done !"
fi

sudo apt install git
if [ $? -eq 0 ]; then
    echo "apt git is done !"
else
    echo "apt git isn't done !"
fi

sudo apt install unzip
if [ $? -eq 0 ]; then
    echo "apt unzip is done !"
else
    echo "apt unzip isn't done !"
fi

# sudo apt install maven
# if [ $? -eq 0 ]; then
#     echo "apt maven is done !"
# else
#     echo "apt git isn't done !"
# fi
