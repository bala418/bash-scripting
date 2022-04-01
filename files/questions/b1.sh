file=file.txt

if [ -s $file ]
then
	echo "File size is not 0"
else
	echo "File size is 0"
fi

str=""


# read line by line and get 1st character using cut
while read -r line
do
  id=$(cut -c-1 <<< "$line")
  echo $id
  str="$str$id"
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
