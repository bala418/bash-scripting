echo "Array"

array=(1 2 3 4 5 6 7 8 9 10)
# print array
echo ${array[@]}
echo ${array[*]}
echo ${array[0]}

sum=0
product=1
for i in ${array[@]}
do
    sum=$((sum+i))
    product=$((product*i))
done
echo "Sum of array is $sum"
echo "Product of array is $product"

# print size of array
echo "Size of array is ${#array[@]}"

