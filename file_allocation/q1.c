#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#define SIZE 50
int block[SIZE];

void disp(){
    int i;
    for(i=0;i<SIZE;i++){
        printf("%d ",block[i]);
        if(i%8==7){
            printf("\n");
        }
    }
    printf("\n");
}

void seq_alloc(int b,int l){
    
    if(l>SIZE){
        printf("Error: Memory not enough\n");
        return;
    }
    if(b<0 || b>=SIZE){
        printf("Error: Invalid block number\n");
        return;
    }

    if(block[b]==1){
        printf("Error: Block already allocated\n");
        return;
    }

    if(b+l>SIZE){
        printf("Error: Block not enough\n");
        return;
    }

    for(int i=b;i<b+l;i++){
        if(block[i]==1){
            printf("Error: Block already allocated\n");
            return;
        }
    }
    for(int i=b;i<b+l;i++){
        block[i]=1;
    }

}

int main(){

    disp();
    int ch=1;
    int b,l;
    while(ch!=0){
        printf("1.Allocate\n2.Display\n0.Exit\n");
        scanf("%d",&ch);
        switch(ch){
            case 1:
                printf("\nEnter the block number and length\n");
                scanf("%d %d",&b,&l);
                seq_alloc(b,l);
                break;
            case 2:
                disp();
                break;
            case 0:
                break;
            default:
                printf("Invalid choice\n");
        }
    }


    return 0;
}