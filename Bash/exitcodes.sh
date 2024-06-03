#!/bin/bash

package=tree

if command -v $package  #when we use "[]" with if, it means test command, when we remove "[]" we will use "command -v" to check a condition. In this case we are checking if $package is installed in Host.
then
        echo "The $package package is already insatalled in the below path"
        which $package
        exit 0 # this command will make to exit the script with exit value 0, other codes after this will not be
else
        echo "$package package is not available. proceeding to install..."
        echo "checking system... starting system update process"
        sudo apt update -y >> /system_update.log && sudo apt upgrade -y >> /system_update.log
        if [ $? -eq 0 ] # "$?" checks whether the last command executed successfully. value 0 means success any other value means it encounter an error 
        then
                echo "system updated successfully. proceeding to install $package"
                sudo apt-get install tree -y >> /package_install.log
                if [ $? -eq 0 ]
                then
                        echo "successfully installed $package. Below is the path"
                        which $package
                        exit 0
                else
                        echo "$package installation failed. please try again"
                        exit 100
                fi
        else
                echo "system update failed"
                exit 150
        fi
fi
