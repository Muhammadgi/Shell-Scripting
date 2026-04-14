#!/bin/bash



read -p "Enter User Name" user_name




read -p "Enter User Expiry in Format YYYY-MM-DD " user_expiry

read -p "Enter User Passwd"

echo "User is creating with directory as well as with passwd expire after next login he will change passwd first"

useradd -m $user_name -e 

passwd $user_name -e 

