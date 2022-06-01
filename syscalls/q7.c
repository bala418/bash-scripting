#include<unistd.h>
#include<stdlib.h>
#include<sys/types.h>
#include<stdio.h>
#include<string.h>
#include<sys/wait.h>

int main() {

    int i;
    pid_t pid = fork();
    if (pid == 0) {
        // child process
        for (i = 0; i < 10; i++) {
            if (i % 2 == 0) {
                printf("%d\n", i);
            }
            sleep(1);
        }
        // exit(0);
    } else {
        // parent process
        for (i = 0; i < 10; i++) {
            if (i % 2 != 0) {
                printf("%d\n", i);
            }
            sleep(1);
        }
        wait(NULL);
    }


    return 0;
}