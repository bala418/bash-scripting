void mergeSort(int a[], int l, int h)
{
    int i, len=(h-l+1);

    pid_t lpid,rpid;
    lpid = fork();
    if (lpid<0)
    {
        // Lchild proc not created
        perror("Left Child Proc. not created\n");
        _exit(-1);
    }
    else if (lpid==0)
    {
        mergeSort(a,l,l+len/2-1);
        _exit(0);
    }
    else
    {
        rpid = fork();
        if (rpid<0)
        {
            // Rchild proc not created
            perror("Right Child Proc. not created\n");
            _exit(-1);
        }
        else if(rpid==0)
        {
            mergeSort(a,l+len/2,h);
            _exit(0);
        }
    }
 
    int status;


    // Wait for child processes to finish
    waitpid(lpid, &status, 0);
	waitpid(rpid, &status, 0);
	printf("\nhi");

    // Merge the sorted subarrays
    merge(a, l, l+len/2-1, h);
}