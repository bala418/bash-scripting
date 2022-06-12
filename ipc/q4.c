#include<fcntl.h>
#include <unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>
int main(){
    int r;
    int p[2];
    printf("\tIPC-Parent and Child using Pipe (One Way) \n");
    char *sms=(char *)malloc(sizeof(char *));
    char buf[1024];
    r=pipe(p);
    if(r<0){
        printf("Pipe creation failed\n");
        exit(0);
    }
    int f=fork();
    if(f<0){
        printf("Error in creating the processes...\n");
        exit(0);
    }

    // child process
    else if(f==0){
        printf("Child Process (P1)\n");
        printf("Enter the message to send (50 characters    maximum):   ");
        fgets(sms,50,stdin);
        // send message from child to parent using pipe
        write(p[1],sms,50);
    }
    // parent process
    else{
        wait(NULL);
        printf("Parent Process (P2)\n");
        read(p[0],buf,50);
        printf("Received Message:\n");
        printf("%s\n",buf);
    }
    return 0;
}