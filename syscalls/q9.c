#include<stdio.h>
#include<sys/wait.h>
#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>
#include<string.h>

void hello(int i){
    sleep(2);
    printf("Hello from process %d\n",i);
    sleep(2);
}

int main() {

    // all child process should wait for 5 seconds

    pid_t pid = fork();
    fork();
    fork();
    if(pid ==0){
        printf("\nHello from child process\n");
        hello(1);
    }
    else{
        printf("\nHello from parent process\n");
        hello(2);
    }

    return 0;
}