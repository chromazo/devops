#!/bin/bash

release=/etc/os-release

if grep -q "Arch" $release
then
        #The host is based on Arch, run the pacman update command
        echo "===================================================" >> /testing/system_update.log
        date >> /testing/system_update.log
        sudo packman -Syu >> /testing/system_update.log
fi

if grep -q "Ubuntu" $release || grep -q "Debian" $release
then
        #The host is based on Ubuntu/Debian
        #running apt update command
        echo "===================================================" >> /testing/system_update.log
        date >> /testing/system_update.log
        sudo apt update -y && sudo apt dist-upgrade -y  >> /testing/system_update.log
fi
