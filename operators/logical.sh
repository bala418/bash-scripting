read -p "Enter a : " a
read -p "Enter b : " b

# check if a or b is true
if [ $a == "true" -o $b == "true" ]
then
    echo "One of them is true"
else
    echo "Both are false"
fi

# check if a and b are true
if [ $a == "true" -a $b == "true" ]
then
    echo "Both are true"
else
    echo "Both are not true"
fi

# check if a and b are true using logical operator ampersand
if [[ $a == "true" && $b == "true" ]]
then
    echo "Both are true"
else
    echo "Both are not true"
fi

# check if either a or b is 1
if [[ $a == "true" || $b == "true" ]]
then
    echo "One of them is true"
else
    echo "Both are false"
fi
