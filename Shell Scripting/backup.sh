#!/bin/sh
#Author: Jayanth Roy

function backup_fun {
    echo "enter the filename"
    read -r myfile
    if [ -f $myfile ]; then
        echo "file exists"
        cp $myfile ./test.sh
    else
        echo "file doesn't exist!"
    fi

}

backup_fun