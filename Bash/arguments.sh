#!/bin/bash

lines=$(ls -l $1 | wc -l) 2> /dev/null
path=$(ls $1)

if  [ $? -ne 0 ]
then
    /usr/bin/echo "Please enter a valid directory path."
    exit 1
fi

if [ $# -ne 1 ]
then
    /usr/bin/echo "This script requires exactly one dirrectory path."
    /usr/bin/echo "Please try again."
    exit 1
fi

/usr/bin/echo "There are total $(($lines-1)) object in $1"

