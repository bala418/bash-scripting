#include<string.h>
#include<fcntl.h>
#include <unistd.h>
#include<stdio.h>
#include<stdlib.h>
int main()
{
int r,nl;
int c=0;
// dynamic memory for sender
char *msg=(char *)malloc(sizeof(char *));
// fixed memory for receiver memory (max.memory)
char bf[1024];
// pipe descriptors for reading and writing data
int p[2];
printf("--------------------------------------------------------------------\n");
printf("\tSending & Receiving Dynamic Messages using Pipe\n");
printf("--------------------------------------------------------------------\n");
// create unnamed pipe using pipe system call
r=pipe(p);
int s=0;
if(r<0)
{
printf("Failed to created unnamed pipe...\n");
exit(1);
}
printf("Enter the number of messages to send: ");
scanf("%d",&nl);
printf("Enter the messages:\n");
for(int i=0;i<nl;i++){
printf("Message #%d: \n",(i+1));
scanf("%s",msg);
// write message to process 2
write(p[1],msg,50);
// count the length of the message
s=strlen(msg);
printf("\tOne SMS is sent\n");
printf("\tSMS Length: %d\n",(int)strlen(msg));
// increment the SMS count by the variable c with 1
c++;
}
printf("%d Messages are Sent Successfully\n",c);
printf("Message from Unnamed Pipe:\n");
printf("Process 2:\n");
printf("---------------------------------------------\n");
for(int i=0;i<nl;i++)
{
read(p[0],bf,50);
printf("%s\n",bf);
}
return 99;
}