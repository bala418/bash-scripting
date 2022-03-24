echo -n "Enter a string : "
read str
n=${#str}

# print the string in triangle format
for (( i=1; i<=$n; i++ ))
do
    for (( j=1; j<=$i; j++ ))
    do
        echo -n "${str:$j-1:1}"
    done
    echo
done