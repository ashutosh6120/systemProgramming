//using shmget, shmat system calls

#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/shm.h>
#include<sys/ipc.h>

int main()
{
    void * psm;
    char buf[10];
    int shmid;
    //to get the shared memory id
    shmid=shmget((key_t) 1122,1024,0666 | IPC_CREAT);
    printf("key of the shared memory:%d\n",shmid);
    //to attach shared memory segment to an address
    psm=shmat(shmid,NULL,0666);
    printf("memory attached at:%p\n",psm);
    printf("enter some data to write to shared memory\n");
    read(0,buf,10);
    sprintf(psm,"%s", buf);
    //to detach the shared  memoryc segment from the address space of the calling process
    shmdt(psm);
    return 0;
}
