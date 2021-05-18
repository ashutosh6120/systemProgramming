#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<sys/wait.h>

int main()
{
    pid_t pid,mypid,myppid;
    int i=10;
    pid = getpid();
    printf("Before fork: Process id is: %d\n",pid);
    pid = fork();

    if(pid<0)
    {
        printf("fork() failure\n");
        return 1;
    }
    //child process
    if(pid==0)
    {
        printf("This is child process\n");
        execlp("ls","ls",NULL);
        printf("End of child process\n"); //is executed only if there is error in execlp call
    }
    else{ //parent process
        wait(NULL);
        printf("This is parent process\n");
    }
    printf("i=%d\n",i);
    return 0;
}