a="abc"
b="xyz"

if [ -z $a ]
then
    echo "String $a is empty"
else
    echo "String $a is not empty"
fi

if [ -n $a ]
then
    echo "String $a is not empty"
else
    echo "String $a is empty"
fi

if [ $a ]
then
    echo "String $a is not empty"
else
    echo "String $a is empty"
fi

if [ $a = $b ]
then
    echo "String $a is equal to $b"
else
    echo "String $a is not equal to $b"
fi

if [ $a != $b ]
then
    echo "String $a is not equal to $b"
else
    echo "String $a is equal to $b"
fi
