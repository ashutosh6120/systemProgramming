/* Write a program to generate and print Fibonacci series with the following
requirements:
- Parent program should create a child and distribute the task of generating
Fibonacci no to its child.
- The code for generating Fibonacci no. should reside in different program.
- Child should write the generated Fibonacci sequence to a shared memory.
- Parent process has to print by retrieving the Fibonacci sequence from the
shared memory.
a) Implement the above using shm_open and mmap
Note: Shared object should be removed at the end in the program . */
#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/shm.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
int main(int argc,char *argv[])
{
    int i;
    pid_t pid;
    int k;
    int n1,n2,n3;
    const int SIZE = 4096;
    int shm_fd;
    void *ptr;
    if (argc > 1)
    {
        sscanf(argv[1], "%d", &i);
        if (i < 1)
        {
            printf("Error input: %d\n", i);
            return 0;
        }
    }
    else
    {
        return 1;
    }
    pid = fork();
    if (pid == 0)
    {
        execlp("./fib","fib",argv[1],NULL);
    }
    else if (pid > 0)
    {
        wait(NULL);
        printf("\nPARENT: child completed\n");
        shm_fd = shm_open("OS", O_RDONLY, 0666);
        ptr = mmap(0, SIZE, PROT_READ, MAP_SHARED, shm_fd, 0);
        printf("Parent printing:\n");
        printf("%s ", (char *)ptr);
        shm_unlink("OS");
    }
    return 0;
}