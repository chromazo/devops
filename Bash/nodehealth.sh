#!/bin/bash

#####################
#Author: Shivam
#Date: 19/07/2024
#
#This script checks node health and provide status
#
# Version: v1
#####################
#set -x #debug mode
set -e  #exit the script when there is an error. Note: does not work with pipe
set -o pipefail
echo "Total number of CPU's:" $(nproc)
echo "CPU details:\n"
lscpu

echo "\n\nAvailable free memory:\n"
free -h

echo "\n\nTotal filesystem space:\n"
df -h

echo "\n\nTotal disk size:\n"
lsblk

echo "\n\nUptime:\n"
uptime

echo "\n\nLogged in users:\n"
w
echo "\n\n"

ps -ef | grep sbin | awk -F" " '{print $2}'

