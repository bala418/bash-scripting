file=file.txt

if [ -s $file ]
then
	echo "File size is not 0"
else
	echo "File size is 0"
fi

str=""

while IFS= read -r line; do
    fl=${line:0:1}
    echo "The first letter of each line is : $fl"
    str="${str}${fl}"
    
done < $file

echo "Final string is $str "

rev=""
for (( i=${#str}; i>=0; i-- ))
do
    rev="${rev}${str:$i:1}"
done
echo "Reverse string: $rev"

if [[ "$str" == "$rev" ]]
then
	echo "the strings are equal"
else
	echo "the strings are not equal"
fi