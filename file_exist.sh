read -p "Enter The File Name to check their existence or not" file_name




if [-f $file_name ]; then
	echo "File Exist"
else
	echo "File Does Not Exist"
fi




