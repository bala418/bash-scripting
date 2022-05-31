# switch case

# number
echo -n "Enter a number : "
read n
case $n in
    1) echo "One";;
    2) echo "Two";;
    3) echo "Three";;
    4) echo "Four";;
    5) echo "Five";;
    6) echo "Six";;
    7) echo "Seven";;
    8) echo "Eight";;
    9) echo "Nine";;
    10) echo "Ten";;
    *) echo "Invalid number";;
esac

# string
echo -n "Enter a string : "
read str
case $str in
    "Hello") echo "Hello World";;
    "Bye") echo "Bye World";;
    *) echo "Invalid string not hello or bye";;
esac


# arithmetic operators
echo -n "Enter 2 numbers : "
read a b
echo -n "Enter the operator : "
read op
case $op in
    "+") echo "Sum is $((a+b))";;
    "-") echo "Difference is $((a-b))";;
    "*") echo "Product is $((a*b))";;
    "/") echo "Quotient is $((a/b))";;
    "%") echo "Remainder is $((a%b))";;
    *) echo "Invalid operator";;
esac

# relational operators
echo -n "Enter the relational operator : "
read op
case $op in
    "==")
        if [ $a -eq $b ]
        then
            echo "True"
        else
            echo "False"
        fi
        ;;
    "!=")
        if [ $a -ne $b ]
        then
            echo "True"
        else
            echo "False"
        fi
        ;;
    ">")
        if [ $a -gt $b ]
        then
            echo "True"
        else
            echo "False"
        fi
        ;;
    ">=")
        if [ $a -ge $b ]
        then
            echo "True"
        else
            echo "False"
        fi
        ;;
    "<")
        if [ $a -lt $b ]
        then
            echo "True"
        else
            echo "False"
        fi
        ;;
    "<=")
        if [ $a -le $b ]
        then
            echo "True"
        else
            echo "False"
        fi
        ;;
    *) echo "Invalid operator";;
esac