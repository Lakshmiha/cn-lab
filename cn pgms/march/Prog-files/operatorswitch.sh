#!/bin/bash
echo "Enter first number:"
read num1
echo "Enter second number"
read num2
echo "Enter an operator:"
read opr
	case $opr in
		+)
			result=$(( $num1 + $num2 ))
			echo "Result: $num1 + $num2 = $result"
			;;
		-)
			result=$(( $num1 - $num2 ))
			echo "Result: $num1 - $num2 = $result"
			;;
		/*)
			result=$(( $num1 * $num2 ))
			echo "Result: $num1 * $num2 = $result"
			;;
		/)
			if [ $num2 -eq 0]; then
				echo "Division by 0 is not allowed!!"
			else
				result=$(( $num1 / $num2 ))
				echo "Result:$num1/$num2=$result"
			fi
			;;
		*)
			echo "Invalid choice!!"
			;;
	esac
