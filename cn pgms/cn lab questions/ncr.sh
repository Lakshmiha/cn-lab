#!/bin/bash
factorial(){
	num=$1
	fact=1
	for (( i=1;i<=num;i++ ))
	do
		fact=$((fact*i))
	done
	echo $fact
}

nCr(){
	n=$1
	r=$2
	n_fact=$(factorial $n)
	r_fact=$(factorial $r)
	nr_fact=$(factorial $((n-r)))

	result=$((n_fact/(r_fact*nr_fact)))
	echo $result

}

read -p "Enter value of n:" n
read -p "Enter value of r:" r

echo "nCr($n C $r)=$(nCr $n $r)"

