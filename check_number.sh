#!/bin/bash


read -p "Enter A Number: "  Number


if [$Number>= 0]; then
	echo "The  Number is Positive and the Number is $Number"

elif [$Number==0]; then
	echo "The Number is Zero $Number"

else 
	echo "The Number is negative $Number"
fi
