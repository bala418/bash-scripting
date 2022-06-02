#include<stdio.h>
#include<unistd.h>

int main(){
    printf("\nI am in q1.c\n");
    printf("\nPID of q1.c: %d\n",getpid());
    char *args[]={"./q2",NULL};
    execv("./q2",args);
    printf("Coming ack from q2.c\n"); // This line will not be executed
    return 0;
}