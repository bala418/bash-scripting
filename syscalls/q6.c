#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdlib.h>

int main(){

    int array[7]={1,5,3,1,6,3,4};
    int n= sizeof (array) / sizeof (array[0]);
    int p=fork();
    if (p!=0){

        int p1=fork();
        if (p1==0){

            int i, k = 0;
            for (i = 0; i < n/2; i++)
                k = 10 * k + array[i];
            int sum=0;
            int temp,r;
            for(temp=k;k!=0;k=k/10){
                r=k % 10;
                sum=sum+(r*r*r);
            }
            if (sum==temp)
                printf("Sub Array 1 is Armstrong \n" );
        }
    }


    if (p==0){
        int i, s = 0;
        for (i = n/2; i < n; i++){

            s = 10 * s + array[i];
        }
        printf("The second sub array is: %d\n",s);
        int sum2=0;
        int temp2,r1;
        for(temp2=s;s!=0;s=s/10){
            r1=s % 10;
            sum2=sum2+(r1*r1*r1);
        }

        if (sum2==temp2){
            printf("Sub Array 2 is Armstrong\n" );}
        else
            printf("Sub Array 2 is not Armstrong\n" );
    }


    return 5 ;
}