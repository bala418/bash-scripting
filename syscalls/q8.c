#include<stdio.h>
#include<sys/wait.h>
#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>
#include<string.h>

int main(){

    char str1[]="Samkyuktha";
	char str2[]="Hedge";
	unsigned int len1=strlen(str1);
	unsigned int len2=strlen(str2);

    // process 1 should print Samkyuktha
    pid_t pid1 = fork();
    if(pid1 == 0) {
        // child process
        for(int i = 0; i < len1; i++) {
            printf("%c\n", str1[i]);
            sleep(1);
        }
    }
    else {
        // parent process
        // process 2 should print Hedge
        pid_t pid2 = fork();
        if(pid2 == 0) {
            // child process
            for(int i = 0; i < len2; i++) {
                printf("%c\n", str2[i]);
                sleep(1);
            }
        }
        else {
            // parent process
            wait(NULL);
        }
        wait(NULL);
    }
    


    return 0;
}