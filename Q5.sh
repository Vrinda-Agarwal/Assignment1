#!/bin/bash
read -p "Enter a string:" string
len=${#string}
for (( i=$len-1; i>=0; i-- ))
do
reverse=$reverse${string:$i:1}
done
echo "$reverse"
echo
echo $reverse | tr '[A-Z]' '[B-ZA-A]'| tr '[a-z]' '[b-za-a]'
echo
for (( i=$len/2-1; i>=0; i-- ))
do
revhalf="$revhalf${string:$i:1}"
done
echo -n $revhalf
for (( i=$len/2; i<$len; i++ ))
do
straighthalf="$straighthalf${string:$i:1}"
done
echo "$straighthalf"