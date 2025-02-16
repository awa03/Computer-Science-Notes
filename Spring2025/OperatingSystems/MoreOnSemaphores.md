# Semaphors

### Standard Synchronization Problems
- Bounded buffer (producer & consumer)
- Fairness (readers and writers)
- Resource allocation (dining philosophers)

### Flying Pigeon Problem
```c
semaphore flyingPath=1; // scheduling
P(flyingPath);
// sending message
V(flyingPath);
```

- Simple solution
- The biggest issue is efficiency
  - one pigeon can fly at a time

### Multi Pigeon
```c
semaphore flyingPath= 1;
P(flyingPath);
// send the message
V(flyingPath);

/* ------------------------------------------------ */

int BirdsInTransit = 0;
++BirdsInTransit;

if(BirdsInTransit == 1){
    P(flyingPath);
}

// sends message

--BirdsInTransit;
if(BirdInTransit == 0){
    V(flyingPath);
}
```

## Definitions
- __Liveness (progress)__
  - if more than one thread is interested in executing within the critical section, some process will eventually do so (deadlock free)
- __Fairness (bounded waiting)__
  - every thread that wants to execute the critical section will do so (no starvation)
