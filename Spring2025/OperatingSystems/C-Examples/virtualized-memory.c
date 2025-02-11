#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/*
** Each process has its own address space
** Virtualized Memory
** An OS as a virtual machine
*/

int main(){
    printf("PID: %d\n", getpid());

    int *p = ((int*)malloc(sizeof(int)));

    *p = 0;

    while(1){
        *p = *p + 1;
        printf("[%d] %p\n", getpid(), p);
        sleep(1);
        free(p);
        int *p = ((int*)malloc(sizeof(int)));
    }
}
