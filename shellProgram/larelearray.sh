#!/bin/bash
#using loop
echo "enter n"
read n
for((i=0;i<n;i++));
do
    read A[$i]
done
echo "array elements are:"
for((i=0;i<n;i++));
do
    echo ${A[$i]}
done
max=0
for((i=0;i<n;i++));
do
    if [ ${A[$i]} -gt $max ]; then
        max=${A[$i]}
    fi
done
echo "largest: $max"