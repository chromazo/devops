#!/bin/bash

##########################
#Author: Shivam
#Date: 24/07/2024
#
#This script prints numbers from range 1-100, if they are divisible by 3 or 5 and not divisible 15
#
#Version: v1
##########################

# divisible by 3 or divisible by 5 and not divisible by 3*5

for i in {1..100};
do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
then
    echo $i
fi;
done
