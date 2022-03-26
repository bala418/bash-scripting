# assign file1 location to variable
a="/home/bala/bash-scripting/files/a.txt"
b="/home/bala/bash-scripting/files/b.txt"
c="/home/bala/bash-scripting/files/c.txt"
d="/home/bala/bash-scripting/files/temp"

if [ -r $a ]
then
    echo "File $a exists and is readable"
else
    echo "File $a does not exist or is not readable"
fi

if [ -w $a ]
then
    echo "File $a exists and is writable"
else
    echo "File $a does not exist or is not writable"
fi

if [ -x $a ]
then
    echo "File $a exists and is executable"
else
    echo "File $a does not exist or is not executable"
fi

if [ -f $a ]
then
    echo "File $a exists"
else
    echo "File $a does not exist"
fi

if [ -d $a ]
then
    echo "File $a is a directory"
else
    echo "File $a is not a directory"
fi

if [ -e $a ]
then
    echo "File $a exists"
else
    echo "File $a does not exist"
fi

if [ -s $a ]
then
    echo "File $a exists and has size greater than zero"
else
    echo "File $a exists and has size zero"
fi

echo
echo

if [ -r $b ]
then
    echo "File $b exists and is readable"
else
    echo "File $b does not exist or is not readable"
fi

if [ -w $b ]
then
    echo "File $b exists and is writable"
else
    echo "File $b does not exist or is not writable"
fi

if [ -x $b ]
then
    echo "File $b exists and is executable"
else
    echo "File $b does not exist or is not executable"
fi

if [ -f $b ]
then
    echo "File $b exists"
else
    echo "File $b does not exist"
fi

if [ -d $b ]
then
    echo "File $b is a directory"
else
    echo "File $b is not a directory"
fi

if [ -e $b ]
then
    echo "File $b exists"
else
    echo "File $b does not exist"
fi

if [ -s $b ]
then
    echo "File $b exists and has size greater than zero"
else
    echo "File $b exists and has size zero"
fi

echo
echo 


if [ -r $c ]
then
    echo "File $c exists and is readable"
else
    echo "File $c does not exist or is not readable"
fi

if [ -w $c ]
then
    echo "File $c exists and is writable"
else
    echo "File $c does not exist or is not writable"
fi

if [ -x $c ]
then
    echo "File $c exists and is executable"
else
    echo "File $c does not exist or is not executable"
fi

if [ -f $c ]
then
    echo "File $c exists"
else
    echo "File $c does not exist"
fi

if [ -d $c ]
then
    echo "File $c is a directory"
else
    echo "File $c is not a directory"
fi

if [ -e $c ]
then
    echo "File $c exists"
else
    echo "File $c does not exist"
fi

if [ -s $c ]
then
    echo "File $c exists and has size greater than zero"
else
    echo "File $c exists and has size zero"
fi

echo
echo 

if [ -r $d ]
then
    echo "File $d exists and is readable"
else
    echo "File $d does not exist or is not readable"
fi

if [ -w $d ]
then
    echo "File $d exists and is writable"
else
    echo "File $d does not exist or is not writable"
fi

if [ -x $d ]
then
    echo "File $d exists and is executable"
else
    echo "File $d does not exist or is not executable"
fi

if [ -f $d ]
then
    echo "File $d exists"
else
    echo "File $d does not exist"
fi

if [ -d $d ]
then
    echo "File $d is a directory"
else
    echo "File $d is not a directory"
fi

if [ -e $d ]
then
    echo "File $d exists"
else
    echo "File $d does not exist"
fi

if [ -s $d ]
then
    echo "File $d exists and has size greater than zero"
else
    echo "File $d exists and has size zero"
fi