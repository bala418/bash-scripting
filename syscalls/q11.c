#include<stdio.h>
#include<sys/wait.h>
#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>

void hello(){
    sleep(2);
    printf("Hello from process\n");
}


int main(){
    int id,id1,id2;
    id=fork();
    id1=fork();
    id2=fork();
    hello();

    if(id>0){
        wait(NULL);

        if(id1>0){
            wait(NULL);
            if(id2>0){
                wait(NULL);
                printf("parent\n");
            }
            else{
                printf("child\n");
            }
        }
        else{
            printf("child\n");
        }
    }
    else{
        printf("child\n");
    }

return 0;
}