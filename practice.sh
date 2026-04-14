echo "PLease Enter The Package Name"



read -p "Enter The Package Name" package_name


sudo apt update && sudo apt upgrade -y




sudo apt install $package_name -y
