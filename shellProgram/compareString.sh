# !\bin\bash
echo "enter 2 strings"
read str1
read str2
if [ "$str1" == "$str2" ]; then
echo "two strings are equal"
elif [ "$str1" > "$str2" ];then
echo "string 1 $str1 is greater than string 2 $str2"
else
echo "$str1 is less than $str2"
fi
echo "length of $str1 is ${#str1}"
echo "length of $str2 is ${#str2}"
