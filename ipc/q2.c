#include <unistd.h>
#include<stdio.h>
#include<stdlib.h>
char * findprime(int n){
    int c=0;
    for(int i=0;i<n;i++){
        if(n%(i+1)==0){
            c++;
        }
    }
    if(c==2)
        return "The Given Number is a prime...\n";
    else
        return "The Given Number is NOT a prime...\n";
}
int main()
{
    int r;
    int p[2];
    printf("\tFinding Prime Number-Pipe\n");
    char buf[1024];
    r=pipe(p);
    if(r<0){
        printf("Pipe creation failed\n");
        exit(0);
    }
    int ele;
    printf("Enter a number: ");
    scanf("%d",&ele);
    char *msg=(char *)malloc(sizeof(char *));
    sprintf(msg,"%d",ele);
    // send single mesK
    write(p[1],msg,sizeof(msg));
    printf("One Message is sent successfully...(Process 1)\n")  ;
    printf("Message from Unnamed Pipe: (Process 2)\n");
    read(p[0],buf,sizeof(msg));
    printf("Received Data: %s\n",buf);

    int num=atoi(buf);
    char *rs=findprime(num);
    printf("%s\n",rs);
    return 0;
}