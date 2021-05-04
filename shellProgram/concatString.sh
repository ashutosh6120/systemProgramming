# !\bin\bash
echo "enter 2 strings"
read s1
read s2
echo "string 1: $s1"
echo "string 2: $s2"
s3=$s1$s2
echo "concatenated string is $s3 and length is ${#s3}".
echo "substring from index 3 to 4 of concatenated string ${s3:3:4}."
