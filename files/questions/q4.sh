file=file2.txt

if [ -s $file ]
then
	echo "File size is not 0"
else
	echo "File size is 0"
fi

str=""
i=0
# read line by line
while IFS= read -r line; do
    # read word by word
    k=0
    for word in $line; do
        if [ $k -eq $i ]
        then
            fl=${word:$i:1}
            str="${str}${fl}"
            i=$((i + 1))
        fi
        k=$((k + 1))
    done
     
done < $file

# check for palindrome
rev=""
for (( i=${#str}; i>=0; i-- ))
do
    rev="${rev}${str:$i:1}"
done
echo "Final string is $str "
echo "Reverse string: $rev"
if [[ "$str" == "$rev" ]]
then
    echo "the strings are equal"
else
    echo "the strings are not equal"
fi