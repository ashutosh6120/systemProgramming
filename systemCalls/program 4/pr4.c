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
        printf("My process id is %d anf PPID is %d\n",getpid(),getppid());
        execlp("/bin/|s","ls",NULL);
        i+=10;
    }
    else{ //parent process
        sleep(2);
        printf("This is parent process\n");
        i+=20;
        printf("My process id is %d and PPID is %d\n",getpid(),getppid());
    }
    printf("i=%d\n",i);
    return 0;
}