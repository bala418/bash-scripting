# reading number in program
echo -n "Enter a number : "
read num


if [ $num -eq 0 ]
then
	echo "The number is zero"
elif [ $num -gt 0 ]
then
	echo "The number is positive"
else
	echo "The number is negative"
fi

if [ $((num%2)) -eq 0 ]
then
	echo "$num is even"
else
	echo "$num is odd"
fi

echo "$1 is entered as an argument while running the command"
