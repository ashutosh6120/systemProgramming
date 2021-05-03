# !\bin\bash
echo "enter 2 numbers"
read a
read b
echo "enter operator"
read op
case $op in
'+') echo "$a+$b=$((a+b))"
;;
'-') echo "$a-$b=$((a-b))"
;;
'*') echo "$a*$b=$((a*b))"
;;
'/') echo "$a/$b=$((a/b))"
;;
*) echo "invalid operation"
;;
esac



