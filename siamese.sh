#!/bin/bash
str1=$1
str2=$2
read -a ARRAY1 <<< $(echo $str1 | sed 's/./& /g')  
read -a ARRAY2 <<< $(echo $str2 | sed 's/./& /g')

ARRAY3=()
for del in ${ARRAY2[@]}
do
	ARRAY1=( ${ARRAY1[@]/$del/} )
done

if (( ${#ARRAY1[@]} )); then
    echo not siamese twins
else
    echo siamese twins
fi
