function factorial(){
    if (($1<=1))
    then
        echo 1
    else
        last=$(factorial $(($1-1)))
        echo $(($1 * $last))
    fi
}

function get_input(){
    echo -n "Enter a number : "
    read n
    ans=$(factorial $n)
    echo "The factorial of $n is $ans"
}

get_input