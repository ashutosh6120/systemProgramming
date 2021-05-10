# !\bin\bash
echo "enter n"
read n
n1=0
n2=1
if [ $n == 1 ]; then
echo "$n1"
elif [ $n == 2 ]; then
echo "$n1" "$n2"
else
echo "$n1"
echo "$n2"
n3=$((n1+n2))
for((i=3;i<=n;i++))
do
echo "$n1"
nfib=$((n1+n2))
n1=$n2
n2=$n
done
fi
