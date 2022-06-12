#include<string.h>
#include <unistd.h>
#include<stdio.h>
#include<stdlib.h>
int main()
{
    int r;
    // pipe descriptors
    int p[2];
    // Text Messages (fixed messages)
    char *sms1="Good morning\n";
    char *sms2="Good evening\n";
    char buf[1024];
    r=pipe(p);
    if(r<0){
        printf("Pipe creation failed\n");
        exit(0);
    }
    // send messages to another process
    write(p[1],sms1,strlen(sms1));
    write(p[1],sms2,strlen(sms2)+1);
    printf("Two Messages are sent successfully...(Process 1)    \n");

    printf("Message from Unnamed Pipe: (Process 2)\n");

    read(p[0],buf,sizeof(buf));
    printf("%s",buf);
    return 0;
}