# menu driven program for calculator
choice=2

while [ $choice -ne 5 ]
do
	echo "1.Add 2.Subtract 3.Multiply 4.Divide 5.Exit"
    echo -n "Enter your choice : "
    read choice

    case $choice in
        1) echo -n "Enter first number : "
           read num1
           echo -n "Enter second number : "
           read num2
           sum=$((num1 + num2))
           echo "Sum of $num1 and $num2 is $sum";;
        2) echo -n "Enter first number : "
           read num1
           echo -n "Enter second number : "
           read num2
           diff=$((num1 - num2))
           echo "Difference of $num1 and $num2 is $diff";;
        3) echo -n "Enter first number : "
           read num1
           echo -n "Enter second number : "
           read num2
           product=$((num1 * num2))
           echo "Product of $num1 and $num2 is $product";;
        4) echo -n "Enter first number : "
           read num1
           echo -n "Enter second number : "
           read num2
           quotient=$((num1 / num2))
           echo "Quotient of $num1 and $num2 is $quotient";;
        5) echo "Exiting...";;
        *) echo "Invalid choice";;
    esac

    echo
done