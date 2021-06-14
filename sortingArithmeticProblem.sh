echo "welcome to sorting arithmetic"
read -p "Enter first element " a
read -p "Enter second element " b
read -p "Enter third element " c
result1=`echo $a $b $c | awk '{print $1 + $2 * $3 }'`
echo "result is $result1"
result2=`echo $a $b $c | awk '{print $1 * $2 + $3 }'`
echo "result is $result2"
result3=`echo $c $a $b | awk '{print $1 + $2 / $3 }'`
echo "result is $result3"
