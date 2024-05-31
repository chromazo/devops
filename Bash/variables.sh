#!/bin/bash

name=Tom
age=12
SystemDate=$(date)

echo "Hello $name"
echo "System Date and Time is:i$SystemDate"

lsList=$(ls)  #runs ls in subshell and stores the output in variable ls-list
pwdfile=$(pwd) #stores pwd in the variable

echo "This is the file list in $pwdfile : $lsList"
echo "Your username is $USER" # $USER is a default builtin variable
