# reading number in program
echo -n "Enter a number : "
num=9

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


# double condition checking

age=20
if [ $age -gt 18 ] && [ $age -lt 30 ]
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi


if [ $age -gt 18 -a $age -lt 30 ]
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi

if((age>18 && age<30))
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi

if([ $age -gt 18 ] && [ $age -lt 30 ])
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi

if [[ $age -gt 18 && $age -lt 30 ]]
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi

if [[ $age -gt 18 && $age -lt 30 ]]
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi