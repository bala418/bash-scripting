file=file4.txt

if [ -s $file ]
then
	echo "File size is not 0"
else
	echo "File size is 0"
fi

n=""

# read file char by char and print only numbers
while read -n1 c; do
    if [ -n "$c" ] && [ "$c" -eq "$c" ] 2>/dev/null; then
        echo $c
        n="${n}${c}"
    fi
done < $file




echo $n

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
