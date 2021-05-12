# !\bin\bash
echo "enter three numbers"
read n1
read n2
read n3
if [ $n1 -gt $n2 ]; then
large=$n1
else
large=$n2
fi
if [ $n3 -gt $large ]; then
large=$n3
fi
echo "largest is $large"
