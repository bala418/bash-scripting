function run(){
    gcc -o $1.out $1.c
    ./$1.out
}

run $1