#!/bin/sh
#Author: Jayanth Roy
#Purpose: expr some auto populate variables/values
#Usage: ./auto_populate.sh

echo "gets all the CLI params $*"
echo "gets the count of CLI params $#"
echo "first CLI param $1"
echo "fourth $@"
echo "process id of current exec process $$"

sleep 400 & #if we use & i means this command runs in background(daemon)
echo "process id of latest process in background $!"
echo "file name of current program $0"