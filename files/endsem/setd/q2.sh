a=c.txt
word=" is "
replace=" is not "
while read -r line; do
    echo "${line//$word/$replace}"
done < $a