file=file3.txt

if [ -s $file ]
then
	echo "File size is not 0"
else
	echo "File size is 0"
fi

n=""

while read line; do
    for word in $line; do
        if [ -n "$word" ] && [ "$word" -eq "$word" ] 2>/dev/null; then
  		echo $word
  		n="${n}${word}"
	fi
    done
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
