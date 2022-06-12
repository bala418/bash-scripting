a=a.txt
i=0
b=b.txt
c=""
while read -r line; do
    if [ $i -eq 0 ]; then
        echo "$line" >> $b
        c=$(echo -e "$c\n$line")
        i=1
    else
        i=0
    fi
done < $a

echo "$b"
echo "$c"