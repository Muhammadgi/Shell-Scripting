#!/bin/bash



cat << usage
Usage: ./create_user.sh <username>
This script creates a user.
usage







read -p "Enter User Name to be created" username 


read -p "Enter User Password" password


create_user() {

if id "$username" &>/dev/null; then
	echo "The $username already exist"
	exit 1
else
	echo "The $username does not exist"

fi


sudo useradd -m $username -p $passsword



}
