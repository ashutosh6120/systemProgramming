/* To demonstrate the use of I/o system calls for FILe I/o(read,write,open,lseek) */

#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<fcntl.h>

int main()
{
    char buf[30];
    int n,fd,fd1;
    fd=open("m6.c",O_RDWR);
    fd1=open("m10.c",O_RDWR | O_CREAT);
    //open(const char *_file, int _oflag, int mode)
    /* path to the file which you want to use;
    flags-O_RDONLY: read only, O_WRONLY: write only, O_RDWR: read and write,
    O_CREAT: create file if it doesn't exist, O_EXCL:prevent reation if it already exists */ 
    printf("file descriptor is %d\n",fd);
    if(fd==-1)
    {
        printf("Error\n");
    }
    else
    {
        n=read(fd,buf,10);
        write(1,buf,n);
        printf("\n");

        lseek(fd,05,SEEK_CUR); //skips 5 characters from current position
        n=read(fd,buf,10); //read 10 ch/cs
        write(1,buf,n);
        printf("\n");


        lseek(fd,10,SEEK_SET); //skips 10 characters from beginning
        n=read(fd,buf,10); //read 10 ch/cs
        write(1,buf,n);
        printf("\n");


        lseek(fd,-5,SEEK_CUR); //skips 5 ch/cs back from current position
        n=read(fd,buf,10); 
        write(1,buf,n);
        printf("\n");


        lseek(fd,-10,SEEK_END); 
        n=read(fd,buf,10);
        write(1,buf,n);
        printf("\n");
    }

    return 0;
}