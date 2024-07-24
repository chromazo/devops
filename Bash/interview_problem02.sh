#!/bin/bash

##########################
#Author: Shivam
#Date: 24/07/2024
#
#To count number of 's' in 'mississipi'
#
#Version: v1
##########################

x=mississipi
grep -o "s" <<< $x | wc -l
