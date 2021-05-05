#!/bin/bash
#using -a commad
echo "enter elements"
read -a A
n=${#A[@]}
echo "length of array: $n"
for i in ${A[@]} ;
do
    echo $i
done
max=${A[0]}
for i in ${A[@]} ;
do
    if [ $i -gt $max ]; then
        max=$i
    fi
done
echo "largest:$max"