#include<stdio.h>
#include<sys/wait.h>
#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>
void binary_search();
int main(){
    int id,arr[100],key,mid,start,end,i;
    mid=0;
    start=0;
    end=9;
    key=2;
    printf("-----the parent process-------\n");
    printf("enter the 10 elements\n");
    for (i=0;i<10;i++){
        scanf("%d",&arr[i]);
    }

    id=fork();
    if(id>0){
        printf("the process id of the parent %d",getppid());
    }
    if(id==0){
        printf("\n-------the child process-------\n");
        printf(" the element to search  ");
        printf("%d",key);
        while(arr[mid]!=key){
            mid=(start+end)/2;
            if(key < arr[mid])
                end=mid-1;
            else
                start=mid+1;
        }
        printf("\nthe position is %d",mid);
        printf("\nthe process id of child process %d\n",getpid());
    }




    return 0;
}