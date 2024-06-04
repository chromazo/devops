#!/bin/bash

# To check if exactly 2 arguments are provided
if [ $# -ne 2 ]
then
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi


# To check is rsync package is installed in the system.
if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please use your distribution package manager to install rsync"
    exit 2
fi


