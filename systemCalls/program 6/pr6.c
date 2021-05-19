//ORPHAN PROCESS!!!
#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<sys/wait.h>
#include<stdlib.h>

int main()
{
    pid_t pid;
    printf("Before fork: Process id is: %d\n",getpid());
    pid = fork();

    if(pid<0)
    {
        printf("fork() failure\n");
        return 1;
    }
    //child process
    if(pid==0)
    {
        sleep(3);
        printf("This is child process with id=%d\n parent id=%d\n",getpid(),pid);
        exit(0);
    }
    return 0;
}