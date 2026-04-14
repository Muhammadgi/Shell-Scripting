#!/bin/bash

count=0
for file in *; do 
    if [ -f "$file" ]; then 
        echo "$file" 
	((count++))
    fi 
done
echo $count
