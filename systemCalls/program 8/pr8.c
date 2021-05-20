/*  TO DEMONSTRATE THE USE OF I/O SYSTEM CALLS FOR CONSOLE. */

#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
    char buf[30];
    int n;
    //read(int_fd, void *_buf, size_t _nbytes)
    //write(int_fd, const void *_buf, size_t _n)
    n=read(0,buf,30);
    /*fd- file descriptor, buf-buffer to read data from
    n bytes- length of buffer; n - no of bytes read on success */ 
    printf("n=%d\n",n);
    write(1,buf,n);
    return 0;
}