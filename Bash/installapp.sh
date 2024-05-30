#!/bin/bash

app=tree
#if [ -f /usr/bin/tree ]  --> another way long way "full qualified path"

if command -v $app  #The "command" checks for the existence of a command
then
        echo "The $app command is already installed"
        command -v $app
else
        echo "The command is not available, installing it...."
        sudo apt update && sudo apt install -y $app
        echo "The $app command is installed at:"
        command -v $app
fi

$app
