#include <stdio.h>
#include<sys/stat.h>
#include<string.h>
#include<fcntl.h>
#include <unistd.h>
// global variables
char m1[]="Hello World.";
char m2[]="Good Morning.";
char m3[]="Welcome to Chennai.\n";
void sendMessage()
{
    int fd;
    fd=open("sms.txt",O_CREAT| O_WRONLY,0777);
    // write the three messages to named pipe
    write(fd,m1,strlen(m1));
    write(fd,m2,strlen(m2));
    write(fd,m3,strlen(m3));
    printf("Three Messages are successfully sent to named   pipe...\n") ;
    close(fd);
}
void receiveMessage()
{
    int fp;
    char buf1[100],buf2[100],buf3[100];
    // open same file (FIFO) for read mode
    fp=open("sms.txt",O_RDONLY);
    // read three messages from named pipe
    read(fp,buf1,strlen(m1));
    read(fp,buf2,strlen(m2));
    read(fp,buf3,strlen(m3));
    printf("Messages from FIFO:\n");
    printf("\t%s\n",buf1);
    printf("\t%s\n",buf2);
    printf("\t%s\n",buf3);
    close(fp);
}
int main()
{
    printf("\t\tIPC using FIFO (Named Pipe)\n");
    sendMessage();
    receiveMessage();
    return 99;
}