#!/bin/bash -x
declare -A arr
echo "welcome to sorting arithmetic"
read -p "Enter first element " a
read -p "Enter second element " b
read -p "Enter third element " c

	result1=`echo $a $b $c | awk '{print $1 + $2 * $3 }'`
	echo "result 1 is $result1"
	arr[0]=$result1
	result2=`echo $a $b $c | awk '{print $1 * $2 + $3 }'`
	echo "result 2 is $result2"
	arr[1]=$result2
	result3=`echo $c $a $b | awk '{print $1 + $2 / $3 }'`
	echo "result 3 is $result3"
	arr[2]=$result3
	result4=`echo $a $b $c | awk '{print $1 % $2 + $3 }'`
	echo "result 4 is $result4"
	arr[3]=$result4

echo ${arr[@]}

declare -a array
for i in {0..3}
do
	array[$i]=${arr[$i]}
done

echo ${array[@]}

desc=`sort -n -r <(printf "%s\n" "${arr[@]}")`
echo $desc
