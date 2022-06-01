function square(){
    temp=1
    temp=$(($n * $n))
    temp=$(($temp + $b))
    echo "$temp"
}


echo -n "Enter a number: "
read n
echo -n "Enter a number to add: "
read b

ans=$(square $n $b)
echo "The answer = $ans"