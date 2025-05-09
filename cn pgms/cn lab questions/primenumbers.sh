#!/bin/bash
echo "Enter a limit:"
read n

echo "The prime numbers upto $n terms are:"
for(( i=2;i<=$n;i++ ))
do
	is_prime=1;
	for(( j=2;j*j<=i;j++ ))
	do
		if ((i%j==0));
		then
			is_prime=0
			break
		fi
	done
	if ((is_prime==1));
	then
		echo "$i"
	fi
done

