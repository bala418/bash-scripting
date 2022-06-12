#include<fcntl.h>
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
#include<sys/wait.h>
#include<sys/types.h>

int main(){
    int r;
    int p[2];

    r = pipe(p);

    if(r<0){
        printf("Pipe creation failed\n");
        exit(0);
    }

    int n;
    printf("Enter a number: ");
    scanf("%d",&n);
    int x;
    for(int i=0;i<n;i++){

        printf("\nEnter a number: ");
        scanf("%d",&x);
        char *msg=(char *)malloc(sizeof(char *));
        sprintf(msg,"%d",x);
        // send single mesK
        write(p[1],msg,50);
        printf("One Message is sent successfully...(Process 1)\n")  ;

    }  

    printf("Message from Unnamed Pipe: (Process 2)\n");
    char buf[1024];
    for(int i=0;i<n;i++){
        read(p[0],buf,50);
        printf("Received Data: %s\n",buf);
    }

}