# data types

# these can have any names but for understanding sake we will use the same names as the data types
char=N
str="Bala"
int=10
float=10.5
bool=true

echo "String : $str"
echo "Integer : $int"
echo "Float : $float"
echo "Boolean : $bool"
echo "Character : $char"

echo "After performing operations on them"

# add str and char
str="$str$char"
echo "String after adding char to it: $str"
str="$str z"
echo "String : $str"

# increment the number
int=$((int + 1))
int=$[int+1]
int=$(expr $int + 1)
let int++
echo "Integer : $int"

# increment float by 1

# echo "scale=2; 100/3" | bc 
VAR=$(echo "scale=2; $float/2" | bc)
echo "Float : $VAR"

# change bool to opposite
if [ $bool == true ]
then
    bool=false
else
    bool=true
fi
echo "Boolean : $bool"

# change char to next character
char=$(echo $char | tr "a-z" "b-z")
char=$(echo $char | tr "A-Z" "B-Z")
echo "Character : $char"