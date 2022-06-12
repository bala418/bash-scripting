a=a.txt
b=b.txt
c=c.txt
# method 1
# d=d.txt
# ac1=$(cat $a)
# ac2=""
# while read -r line; do
#     ac2=$(echo -e "$ac2\n$line")        
# done < $a
# echo "$ac1"
# echo ""
# echo "$ac2"
# echo "$ac1" > $d

# method 2
ac=$(cat $a)
bc=$(cat $b)
cc=$(cat $c)

echo "$ac" > $b
echo "$bc" > $c
echo "$cc" > $a
