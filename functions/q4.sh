function a(){
    hi=10
    return $hi
}

function b(){
    hi=14
    return $hi
}

# below does not work as return is used. Can't return strings as well
# k=$(b)b
b
k=$?

echo "String is :$k"