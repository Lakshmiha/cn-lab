i echo "Enter file name: "
    read file


while true; do

    echo "Choose an operation:"
    echo "1. To delete perticular line"
    echo "2. To delete the last line"
    echo "3. To delete line range from x to y"
    echo "4. To delete all blank line from the file"
    echo "5. Exit"

    echo " Enter the choice "
    read  choice



    case $choice in
        1)
            echo " Enter line number: "
            read line_number
            sed -i "${line_number}d" "$file"
            echo" delete " +$line_number+ "  line........"
            ;;
        2)
            sed '$d' "$file"
            ;;
        3)
            echo "Enter starting line numbers: "
            read x
            echo " Enter ending line number: "
            read y

            sed -i 'x,yd' "$file"
            ;;
        4)
          
           sed -i '/^$/d' "$file"
            ;;
       5)
            echo "Exiting the program."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please choose between 1 and 5."
            ;;
    esac
done
                                                                                                                                                     49,4          Bot


