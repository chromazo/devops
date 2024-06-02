#!/bin/bash

release=/etc/os-release
updater=/var/log/updater.log
error=/var/log/updater_error.log

chech_exit_status() {
    if [ $? -ne 0 ]
    then
         echo "We encountered some error while updating the system. please try again"
    else
         echo "system updated successfully"
    fi
}

if grep -q "Arch" $release
then
        #The host is based on Arch, run the pacman update command
        echo "===================================================" >> $updater
        date >> $updater
        sudo packman -Syu 1>> $updater 2>> $error
	chech_exit_status
fi

if grep -q "Ubuntu" $release || grep -q "Debian" $release
then
        #The host is based on Ubuntu/Debian
        #running apt update command
        echo "===================================================" >> $updater
        date >> $updater
        sudo apt update -y && sudo apt dist-upgrade -y  1>> $updater 2>> $error
        chech_exit_status
fi
