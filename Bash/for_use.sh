#!/bin/bash

for file in /testing/logging/*.log
do
	sudo tar -czvf $file.tar.gz $file
done
