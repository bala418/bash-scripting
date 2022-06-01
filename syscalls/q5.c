#include<unistd.h>
#include<stdlib.h>
#include<sys/types.h>
#include<stdio.h>
#include<string.h>
#include<sys/wait.h>

unsigned int i=0,j=0;

int main(){
	char str1[]="Samkyuktha";
	char str2[]="Hedge";
	unsigned int len1=strlen(str1);
	unsigned int len2=strlen(str2);
	int diff=len1-len2;
	diff<0?diff*=-1:diff;
	int id=0;
	do{	
		id=fork();
		if(id==0){
			if(i<len1){
				printf("%c\n",str1[i]);
				exit(0);			
			}
		}
		else{
			wait(NULL);
			i++;
			printf("%c\n",str2[j]);
			j++;
			
		}
		
	}while(i!=len1+diff && j!=len2+diff);
	return 0;
}