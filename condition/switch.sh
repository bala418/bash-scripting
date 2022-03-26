# switch case

echo -n "Enter a number : "
read n
case $n in
    1) echo "One";;
    2) echo "Two";;
    3) echo "Three";;
    4) echo "Four";;
    5) echo "Five";;
    6) echo "Six";;
    7) echo "Seven";;
    8) echo "Eight";;
    9) echo "Nine";;
    10) echo "Ten";;
    *) echo "Invalid number";;
esac

echo -n "Enter a string : "
read str
case $str in
    "Hello") echo "Hello World";;
    "Bye") echo "Bye World";;
    *) echo "Invalid string";;
esac
