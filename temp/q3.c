#include<fcntl.h>
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
#include<sys/wait.h>
#include<sys/types.h>

char *msg1 = "Hello World";
char *msg2 = "Good Morning";

void sendmsg(){
    int fp;
    fp = open("a.txt",O_CREAT|O_WRONLY,0777);
    write(fp,msg1,strlen(msg1));
    write(fp,msg2,strlen(msg2));
    printf("Messages are successfully sent to named pipe...\n");
    close(fp);
}

void receivemsg(){
    int fp;
    char buf1[100],buf2[100];
    fp = open("a.txt",O_RDONLY);
    read(fp,buf1,strlen(msg1));
    read(fp,buf2,strlen(msg2));
    printf("Messages from FIFO:\n");
    printf("\t%s\n",buf1);
    printf("\t%s\n",buf2);
    close(fp);

}

int main(){

    printf("\nIPC using named pipes\n");
    sendmsg();
    receivemsg();
    return 0;

}