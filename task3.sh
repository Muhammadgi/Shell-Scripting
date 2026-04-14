#!/bin/bash

echo "Enter File Path"

read filepath

if [ -f $filepath ]; then
	echo "File Exist"
else
	echo "File Does Not Exist"
fi
