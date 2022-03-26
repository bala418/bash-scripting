# while loop to reverse a number
n=123
rev=0
m=$n
while [ $n -gt 0 ]
do
    rem=$((n%10))
    rev=$(((rev*10)+rem))
    n=$((n/10))
done
echo "Reverse of $m is $rev"

# while loop to check for armstrong
n=153
sum=0
temp=$n
while [ $n -gt 0 ]
do
    rem=$((n%10))
    sum=$((sum+rem*rem*rem))
    n=$((n/10))
done
if [ $sum -eq $temp ]
then
    echo "$temp is an Armstrong number"
else
    echo "$temp is not an Armstrong number"
fi
