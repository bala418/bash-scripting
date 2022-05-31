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

# read string with spaces
echo -n "Enter a string : "
read str
echo "String is $str"
