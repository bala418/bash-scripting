# reading number in program
echo -n "Enter a number: "
read num

if [[ $num -eq 0 ]]
then
	echo "The number is zero"
elif [ $num -gt 0 ]
then
	echo "The number is positive"
else
	echo "The number is negative"
fi


if [ "$num" -eq 0 ]
then
	echo "The number is zero"
elif [ "$num" -gt 0 ]
then
	echo "The number is positive"
else
	echo "The number is negative"
fi

# if number is divisible by 2 then print even


if [ $((num%2)) -eq 0 ]
then
	echo "$num is even"
else
	echo "$num is odd"
fi

if ((num>0))
then
	echo "$num is positive"
elif ((num<0))
then
	echo "$num is negative"
else
	echo "$num is zero"
fi


if (($num>0))
then
	echo "$num is positive"
elif (($num<0))
then
	echo "$num is negative"
else
	echo "$num is zero"
fi

# check if num + 2 is even
if [[ $((num+2))%2 -eq 0 ]]
then
	echo "$((num+2)) is even"
else
	echo "$((num+2)) is odd"
fi

# c style if else
if ((($num+2)%2))
then
	echo "$((num+2)) is odd"
else
	echo "$((num+2)) is even"
fi

# increment num by 2
if [ $((num+2)) -eq 11 ]
then
	echo "$num + 2 is 11"
else
	echo "$num + 2 is not 11"
fi

# if num+2 is even then print even
if [ `expr $((num+2)) % 2` -eq 0 ]
then
	echo "$((num+2)) is even"
else
	echo "$((num+2)) is odd"
fi

if [[ $num == 0 ]]
then
	echo "$num is zero"
elif [ $num > 0 ]
then
	echo "$num is positive"
else
	echo "$num is negative"
fi

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

if ((age>18 && age<30))
then
	echo "You are eligible for vffoting"
else
	echo "You are not eligible for voting"
fi

if ([ $age -gt 18 ] && [ $age -lt 30 ])
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

if ([ $age -gt 18 -a $age -lt 30 ])
then
	echo "You are eligible for voting"
else
	echo "You are not eligible for voting"
fi



i=7

if [ "$i" -ne 6 ] && [ "$i" -ne 8 ]; then
   echo 'i is neither 6 nor 8'
fi