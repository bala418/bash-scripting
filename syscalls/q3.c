#include<unistd.h>
#include<stdio.h>
#include <sys/types.h>
int main()
{
    int id;
    printf("-----------------------------------------\n");
    printf("\tProcess ID of Parent & Child\n");
    printf("-----------------------------------------\n");
    // calling fork()
    id=fork();
    if(id==0){
        printf("\n\nChild Process is calling ...\n");
        printf("Returned Value of Child Process : %d\n",id); // prints 0
        printf("Process ID of  Child Process : %d\n",getpid()); // prints child process id which is the same as value returned by parent process
        printf("Parent Process ID of Child Process: %d\n",getppid()); // same as parent process id
    }
    else if(id>0){
        printf("\n\nParent Process is calling ...\n");
        printf("Returned Value of Parent Process : %d\n",id);
        printf("Process ID of Parent Process : %d\n",getpid());
        printf("Parent Process ID of parent: %d\n",getppid());
    }
    else{
        printf("Error in Forking\n");
    }
    return 0;
}

// Parent Process is calling ...
// Returned Value of Parent Process : 6523
// Process ID of Parent Process : 6522
// Parent Process ID of parent: 6516


// Child Process is calling ...
// Returned Value of Child Process : 0
// Process ID of  Child Process : 6523
// Parent Process ID of Child Process: 6522