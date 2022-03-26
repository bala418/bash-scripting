a=10
b=20
if [ $a != $b ]
then
    echo "a is not equal to b"
else
    echo "a is equal to b"
fi

echo -n "Enter month : "
read month
echo -n "Enter day : "
read day

if [ $month -gt 12 -o $month -lt 1 ]
then
    echo "Invalid month"
else
    echo "Valid month"
fi

if [ $day -ge 1 -a $day -le 31 ]
then
    echo "Valid day"
else
    echo "Invalid day"
fi