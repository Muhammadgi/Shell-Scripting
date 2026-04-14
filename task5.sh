#!/bin/bash
read -p "Enter Number" n

for (( i=1 ; i<=$n ; i++ )); 
do
	echo $i
done



s=("football" "cricket" "hockey") 
for n in ${s[@]}; 
do
    echo $n
done
