echo -n "Enter 2 numbers : "
read a b
echo -n "Enter the relational operator : "
# read op
op===
case $op in
    "==")
        echo "$a == $b = $((a==b))"
        ;;
    "!=")
        echo "$a != $b = $((a!=b))"
        ;;
    ">")
        echo "$a > $b = $((a>b))"
        ;;
    "<")
        echo "$a < $b = $((a<b))"
        ;;
    ">=")
        echo "$a >= $b = $((a>=b))"
        ;;
    "<=")
        echo "$a <= $b = $((a<=b))"
        ;;
    *)
        echo "Invalid operator"
        ;;
esac

# different ways of comparing numbers

if [ $((a==b)) == 1 ]
then
    echo "a is equal to b"
else
    echo "a is not equal to b"
fi

if [ $((a==b)) -eq 1 ]
then
    echo "a is equal to b"
else
    echo "a is not equal to b"
fi


if((a>b))
then
    echo "a is greater than b"
elif((a<b))
then
    echo "a is less than b"
else
    echo "a is equal to b"
fi