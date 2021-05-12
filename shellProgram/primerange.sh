#!/bin/bash
#prime range betweeen given limits
echo "enter lower limit: "
read l
echo "enter upper limit: "
read u
echo "prime in between $l and $u are:"
for ((n=$l;n<=$u;n++)); do
    if [ $n -le 1 ] ; then
        continue;
    fi
    isPrime=1
    for ((i=2;i<$n;i++)); do
        if [ $(( $n % $i )) == 0 ]; then
            isPrime=0
            break
        fi
    done
    if [ $isPrime == 1 ]; then
        echo $n
    fi
done