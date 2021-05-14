#include<stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    printf("Before fork\n");
    fork();
    //fork();
    //fork();
    printf("after first fork() call\n");
    fork();
    printf("after second fork() call\n");
    fork();
    printf("after third fork() call\n");
    return 0;
}