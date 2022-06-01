# sort an array in bash 

array=(90 2 3 4 5 6 7 8 9 10)


# sort array in ascending order

for (( i=0; i<${#array[@]}; i++ ))
do
    for (( j=i+1; j<${#array[@]}; j++ ))
    do
        if [ ${array[i]} -gt ${array[j]} ]
        then
            temp=${array[i]}
            array[i]=${array[j]}
            array[j]=$temp
        fi
    done
done

# print array
echo ${array[@]}
