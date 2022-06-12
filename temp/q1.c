#include<fcntl.h>
#include <unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>

int main(){

    int r;
    int p[2];
    char *sms=(char *)malloc(sizeof(char *));
    char buf[1024];
    
    r=pipe(p);
    if(r<0){
        printf("\nFailed to create pipe\n");
        exit(0);
    }

    int f=fork();
    if(f<0){
        printf("\nError in creating the processes...\n");
        exit(0);
    }
    else if(f==0){
        printf("\nHi, I am child process (P1)\n");
        printf("Enter the message towrite() send (50 characters    maximum):   ");
        int x;
        scanf("%d",&x);
        sprintf(sms,"%d",x);
        write(p[1],sms,50);
        printf("%s\n",sms);
    }
    else{
        wait(NULL);
        printf("\nHi, I am parent process (P2)\n");
        int y;
        read(p[0],buf,50);
        y = atoi(buf);
        printf("\nReceived Message:\n");
        printf("%s\n",buf);
        printf("%d\n",y+10);
    }


    return 0;
}