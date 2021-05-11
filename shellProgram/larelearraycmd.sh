#!/bin/bash
#using command line 
echo "command line arguments are:$@"
echo "length:$#"
#echo "array elements are:"
max=$1
for i in $@ ;
do
    if [ $i -gt $max ]; then
        max=$i
    fi
done
echo "largest:$max"