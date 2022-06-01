# reverse a string
str="Hello World"
rev=""
for (( i=${#str}; i>=0; i-- ))
do
    rev="$rev${str:$i:1}"
done
echo "Reverse of $str is $rev"

# print a string using for loop
for (( i=0; i<${#str}; i++ ))
do
    echo -n "${str:$i:1}"
done
echo

# print every alternate character of a string
for (( i=0; i<${#str}; i+=2 ))
do
    echo -n "${str:$i:1}"
done
echo

# print length of a string
echo "Length of $str is ${#str}"

n=${#str}

for (( i=1; i<=$n; i++ ))
do
    for (( j=0; j<$i; j++ ))
    do
        echo -n "${str:$j:1}"
    done
    echo
done

# replace spaces with underscores
str="Hello World, this is Bala"

# this prints string from index 2 to the end
echo "${str:2}"

for (( i=0; i<${#str}; i++ ))
do
    if [ "${str:$i:1}" = " " ]
    then
        # print string
        echo "${str:0:$i}"
        str="${str:0:$i}_${str:$i+1}"
    fi
done
echo "String after replacing spaces with underscores is $str"


newstr=""
str="hi this is bala again"
char="_"
for (( i=0; i<${#str}; i++ ))
do
    if [ "${str:$i:1}" = " " ]
    then
        newstr="$newstr$char"
    else
        newstr="$newstr${str:$i:1}"
    fi
done
echo "String after replacing spaces with underscores is $newstr"


str1="This is balasubramaniam. Good name bala sir"
str2="bala"
n2=${#str2}
count=0
temp=""

for ((i=0; i<${#str1}; i++))
do
    temp="${str1:$i:$n2}"
    echo "Strings compared are : $temp and $str2"
    if [ "$temp" == "$str2" ]
    then
        count=$((count+1))
    fi
done

echo "Number of times bala has appeared = $count"

str="Hello World"
for word in $str
do
    echo $word
done

