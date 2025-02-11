#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>

volatile int counter = 0;
int loops;


void *worker1(void *arg){
    int i;
    for(i =0; i < loops; i++){
        printf("1: %d\n", (unsigned int)pthread_self());
        counter++;
    }
    return NULL;
}

void *worker2(void *arg){
    int i;
    for(i =0; i < loops; i++){
        printf("2: %d\n", (unsigned int)pthread_self());
        counter++;
    }
    return NULL;
}

int main(int argc, char** argv){
    if(argc < 2){
        printf("Not Enough Args");
        return -1;
    }

    loops = atoi(argv[1]);

    pthread_t p1, p2;
    printf("Initalial Value: %d\n", counter);

    pthread_create(&p1, NULL, worker1, NULL);
    pthread_create(&p2, NULL, worker2, NULL);

    pthread_join(p1, NULL);
    pthread_join(p2, NULL);

    printf("Final Value: %d\n", counter);
}
