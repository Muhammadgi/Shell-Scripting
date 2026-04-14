#!/bin/bash

read -p "Enter Your Number: " number

if [ "$number" -gt 0 ]; then
    echo "The number is Positive"
elif [ "$number" -eq 0 ]; then
    echo "The number is zero"
else
    echo "The number is negative"
fi
