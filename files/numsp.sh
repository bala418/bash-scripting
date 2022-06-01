file=a.txt
while read -r line; do
    for num in $line; do
        if [[ $num =~ ^[0-9]+$ ]]
        then
            echo $num
        fi
    done
done < $file

while read -r line; do
    for special in $line; do
        for (( i=0; i<${#special}; i++ ))
        do
            char=${special:$i:1}
            if [[ $char =~ ['!@#$%^&*()_+'] ]]; then
                echo $char
            fi
        done
    done
done < $file