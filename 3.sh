# data types

# these can have any names but for understanding sake we will use the same names as the data types
char=a
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
str=$str$char
echo "String : $str"
str="$str z"
echo "String : $str"

# increment the number
int=$((int + 1))
echo "Integer : $int"

# increment float by 1

# echo "scale=2; 100/3" | bc 
VAR=$(echo "scale=2; $float/2" | bc)
echo "Float : $VAR"

# change bool to opposite
if [ $bool = true ]
then
    bool=false
else
    bool=true
fi
echo "Boolean : $bool"

# increment char by 1
a=$(echo "$y" | tr "0-9a-z" "1-9a-z_")
echo "Character : $char"