#!/bin/bash
echo "Enter the min and max age"
read min max
sed '1d' $1 > temp
while read line
do
age=`echo "$line" | awk -F " " '{print $3}'`
if [ $age -gt $min ] && [ $age -lt $max ]
then
echo $line | awk -F " " '{print $2}'
fi
done < temp
