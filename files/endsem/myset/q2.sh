a=ques2.txt
i=0
ac=""
while read -r line; do
    if [ $i -lt 5 ]; then
        ac=$(echo -e "$line\n$ac")
    else
        ac=$(echo -e "$ac\n$line")
    fi
    i=$((i+1))
done < $a

echo "$ac" > $a