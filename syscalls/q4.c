#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/wait.h>
int main()
{
    pid_t pd;
    printf("-----------------------------------------------\n");
    printf("\twait() and exit()\n");
    printf("-----------------------------------------------\n");
    int a=2;
    int b=4;
    // execution of fork() call
    int sum=0;
    pid_t id = fork();
    if (id==0)
    {
        printf("Child is calling...\n");
        // normal termination
        sum = a+b;
        printf("Sum of %d and %d is %d\n",a,b,sum);

        printf("Child terminated normally\n");
    }
    else
    {
    // get the PID of terminated child process
        pd = wait(NULL);
        printf("Parent is calling...\n");
        // print the process IDs of parent and child processes
        printf("Parent PID\t: %d\n", getpid());
        printf("Child PID\t: %d\n", pd);
        printf("%d\n",id);
    }
    return 0;
}