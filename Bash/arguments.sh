#!/bin/bash

lines=$(ls -l $1 | wc -l) 2> /dev/null # "$1" means the script will take only 1 argument before running
path=$(ls $1)

#This will check if the path provided is valid, if not it will print error and exit.
if  [ $? -ne 0 ]
then
    /usr/bin/echo "Please enter a valid directory path."
    exit 1
fi

#This will check if only only aregument is provided, if not it will print error and exit.
if [ $# -ne 1 ]
then
    /usr/bin/echo "This script requires exactly one dirrectory path."
    /usr/bin/echo "Please try again."
    exit 2
fi

#if only one and valid argument is provided, we will print the total lines in the given path.
/usr/bin/echo "There are total $(($lines-1)) object in $1"

