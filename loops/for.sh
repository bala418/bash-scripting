# for loop

echo -n "Enter a number : "
read n

# sum of n numbers
sum=0
for (( i=1; i<=$n; i++ ))
do
    sum=$((sum + i))
done
echo "Sum of $n numbers is $sum"

for i in 1 2 3 4 5
do
  echo "Looping ... number $i"
done

echo

for i in {1..5}
do
   echo "Welcome $i times"
done

echo

for i in {0..10..2}
do 
    echo "Welcome $i times"
done

echo

for num in {5..0..1}  
do  
    echo $num  
done  
