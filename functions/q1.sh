disp(){
    echo "Hello World"
}

disp

sum(){
    a="$1"
    b="$2"
    sum=$((a+b))
    echo "NO of arguments passed = $#"
    echo "Sum of $1 and $2 = $sum"
}

sum 20 30