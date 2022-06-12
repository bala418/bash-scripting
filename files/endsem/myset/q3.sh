a=ques2.txt
# line count of file
n=$(wc -l < $a)
echo $n
last5=$(tail -5 $a)
rem=$((n-5))
firstfew=$(head -$rem $a)
rot5=""
while read -r line; do
    rot5=$(echo -e "$line\n$rot5")
done <<< "$last5"

echo "$firstfew" > $a
echo "$rot5" >> $a