echo "welcome to sorting arithmetic"
read -p "Enter first element " a
read -p "Enter second element " b
read -p "Enter third element " c
result=`echo $a $b $c | awk '{print $1 + $2 * $3 }'`
echo "result is $result"
