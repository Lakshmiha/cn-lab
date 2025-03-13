#!/bin/bash
n=10
a=0
b=1
sum=0
echo "Fibonacci series upto 10 terms:"
for i in {1..10}; do

  echo "$a"

  sum=$((sum + a))

  c=$((a + b))

  a=$b

  b=$c

done



echo "Sum of the series: $sum"
