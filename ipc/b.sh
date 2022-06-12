function f(){
    # compile c file $1
    gcc -o $1 $1.c
    # run the compiled file
    ./$1
}

f $1