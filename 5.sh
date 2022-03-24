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

for i in {1..5}
do
   echo "Welcome $i times"
done

echo "Bash version ${BASH_VERSION}..."
for i in {0..10..2}
do 
    echo "Welcome $i times"
done

for file in /etc/*
do
	if [ "${file}" == "/etc/resolv.conf" ]
	then
		countNameservers=$(grep -c nameserver /etc/resolv.conf)
		echo "Total  ${countNameservers} nameservers defined in ${file}"
		break
	fi
done

for num in {10..0..1}  
do  
    echo $num  
done  