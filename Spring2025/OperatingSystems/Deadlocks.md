# Deadlocks
- occur when threads are waiting for resources with circular dependencies
  - often involve non preemptable resources, which cannot be taken from its current thread without failing computation
- __Deadlocks__: often involve preemptable resources
- __Starvation__: a thread waits indefinitely
- A deadlock has the implication of starvation

```c
/*
    Possible Deadlock, not always
*/

// Thread A
P(x);
P(y)

// Thread B
P(y)
P(x);
```

- A thread can grab memory
- B thread could grab disk space
- each are reliant on one anothers release

### Why they are important
- round robin cannot prevent
- can occur whenever waiting happens
- wouldn't be an issue with independent threads (only cooperative)

### Dining Lawyer Problem
- Chopsticks
- only 6 but 6 people, who gets the sticks??

```c
semaphore chopstick[5] = {1, 1, 1, 1, 1};
lawyer(int j){
    while(TRUE){
        // attempt to grab sticks
        P(chopstick[j]);
        P(chopstick[(j + 1) % 5]);

        eat();

        // release chopstick
        V(chopstick[(j + 1) % 5]);
        V(chopstick[j]);
    }
}
```

### Conditions
- Limited access (lock protected resources)
- No preemption (if someone has the resource it cannot be taken away)
- wait while holding (holding a resource while requesting and waiting for another)
- circular chain of requests

### Deadlock Prevention
- All four conditions must be true
- to prevent remove one condition!
- methods
  - infinite resources (maybe unrealistic)
  - no sharing, using independent threads
  - allocate resources at the start

```

```
