array=()

echo -n "Enter the size of the array: "
read n

for ((i=0; i<n; i++))
do
    read io
    array[$i]="$io"
done

max=0

for number in ${array[@]}
do
    if [ $number -gt $max ]
    then
        max=$number
    fi
done

echo "Maximum number = $max"

min=1900

for ((i=0; i<n; i++))
do
    if [ ${array[i]} -lt $min ]
    then
        min=${array[i]}
    fi
done
echo "the minimum number = $min"