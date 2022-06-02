#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/wait.h>

int main(){

    int array[7]={1,5,3,1,6,3,4};
    int n= sizeof (array) / sizeof (array[0]);
    int p=fork();

    // child process 1 should print 1,5,3
    // child process 2 should print 1,6,3,4
    if(p!=0){ 
        wait(NULL);
        int p1=fork();
        if (p1==0){
            for(int i=n/2;i<n;i++){
                printf("%d\n",array[i]);
            }   
        }
    }
    else{
        for(int i=0;i<n/2;i++){
            printf("%d\n",array[i]);
        }
    }

}