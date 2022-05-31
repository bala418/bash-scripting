#! /usr/bin/bash
# Basic input output
echo "Hello World"
echo -n "Enter a number : "
read n
echo "The number you entered is : $n"
# increment the number
n=$((n + 1))
echo "The number +1 = $n"

# multi line comment
: '
This is a multi line comment
Wow co cool
'