#!/bin/bash
validate_password(){
	password=$1
	if [ ${#password} -lt 8 ]; then
		echo "Password must be atleast 8 characters long"
		return 1
	fi

	if ! [[ $password =~ [A-Z] ]]; then
                echo "Password must contain atleast one uppercase letter"
                return 1
        fi

	if ! [[  $password =~ [a-z] ]]; then
                echo "Password must contain atleast one lowercase letter"
                return 1
        fi

	if ! [[ $password =~ [0-9] ]]; then
                echo "Password must contain atleast one digit"
                return 1
        fi

	if ! [[ $password =~ [\@\#\$\%\%\^\&\*\(\)\_\+\!] ]]; then
		echo "Password must contain atleast one special character (@,#,$,%,^,&,*,(,),+,!)"
                return 1
        fi
	echo "Password is strong"
	return 0
}
read -p "Enter the password:" password
validate_password $password
