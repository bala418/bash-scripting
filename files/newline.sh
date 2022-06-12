a=a.txt
b=b.txt
c=c.txt

ac=$(cat $a)
ac2=""
ac3=""
while read -r line; do
    echo "$line"
    ac2=$(echo -e "$ac2\n$line")      
    ac3="$ac3
$line"    
done < $a

echo "$ac"
echo ""
echo "$ac2"
echo "$ac3"

word1=hello
word2=world


echo -n "Printing word4: "
word4=$(echo -e "$word1\n$word2")
echo "$word4"

echo -n "Printing word4: "
word4=$(echo $word1$'\n'$word2)
echo "$word4"

echo -n "Printing word4: "
word4=$(echo $word1 ; echo $word2)
echo "$word4"

FOO=$(printf "hello\nworld")
echo "$FOO"