# read -p "Enter a string: " str
str="JohnCena"
echo "String is $str"
len=${#str}
echo "String length is $len"


# reverse string
rev=""
for (( i=${#str}; i>=0; i-- ))
do
    echo "${str:$i:1}"
    rev="${rev}${str:$i:1}"
done
echo "Reverse string: $rev"

# reverse first k letters of a string
k=3
rev=""
temp=$((k))
echo "temp is $temp"
for (( i=0; i<=$len; i++ ))
do
    if [ $temp -gt 0 ]
    then

        # decrement k by 1
        rev="${str:$i:1}${rev}"
        ((temp--))
    else
        rev="${rev}${str:$i:1}"
        ((k--))
    fi
done
echo "After reversing first $k letters of string: $rev"

# delete first k letters of a string
k=3
k2=$((k))
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
echo "Delete first $k2 letters of string: $str2"