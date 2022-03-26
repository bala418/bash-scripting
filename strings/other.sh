read -p "Enter a string: " str
echo "String is $str"

# reverse string
rev=""
for (( i=${#str}; i>=0; i-- ))
do
    rev="${rev}${str:$i:1}"
done
echo "Reverse string: $rev"

# reverse first k letters of a string
k=3
rev=""
for (( i=${#str}; i>=0; i-- ))
do
    rev="${rev}${str:$i:1}"
    ((k--))
    if [ $k -eq 0 ]
    then
        break
    fi
done
echo "Reverse first $k letters of string: $rev"

# delete first k letters of a string
k=3
str2=""
for (( i=0; i<${#str}; i++ ))
do
    if [ $k -gt 0 ]
    then
        ((k--))
    else
        str2="${str2}${str:$i:1}"
    fi
done
echo "Delete first $k letters of string: $str2"

