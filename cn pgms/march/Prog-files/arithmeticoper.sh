#!/bin/bash
arithmetic_operations(){
	case $1 in
		1)
			result=$(( $2 + $3 ))
			echo "Result: $2 + $3 = $result"
			;;
		2)
			result=$(( $2 - $3 ))
			echo "Result: $2 - $3 = $result"
			;;
		3)
			result=$(( $2 * $3 ))
			echo "Result: $2 * $3 = $result"
			;;
		4)
			if [ $3 -eq 0]; then
				echo "Division by 0 is not allowed!!"
			else
				result=$(( $2 / $3 ))
				echo "Result:$2/$3=$result"
			fi
			;;
		*)
			echo "Invalid choice!!"
			;;
	esac
}
echo "Select an operation to perform:"
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"

read -p "Enter your choice(1-4):" choice
read -p "Enter the first number:" num1
read -p "Enter the second number:" num2

arithmetic_operations $choice $num1 $num2


