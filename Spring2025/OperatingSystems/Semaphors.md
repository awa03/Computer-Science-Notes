# Semaphore and Bounded Buffer

- _Semaphore_ is a type of generalized lock
- consists of a non negative integer value
- two operations
  - `P()`: an atomic operation that waits for semaphore to become positive
  - `V()`: an atomic operation that increments semaphore by 1 and wakes up a waiting thread at `P()`, if any
- Defined by Dijkstra in the last
- Main synchronization primitives used in UNIX
- The P operation is an abbreviation for proberen, meaning to test
- V stands for verhogen, meaning to increment
> [!NOTE]
> Why didnt they didnt use a more clear word for us english speakers? :(
> Also why is this not just implemented with a boolean? or is this just c supremacy at work
> or does this allow more flexibility?

## Semaphores vs Integers
- No negative values
- Only operations are P() and V()
  - cannot read or write semaphore values
  - except at init time
- Operations are atomic
  - Two P() calls cannot decrement the value below 0
  - A sleeping thread at P() cannot miss a call
- _Binary Semaphore_: initialized to 1
- `P()` waits until val is 1, then set to 0
- `V()` sets the value to 1, wakes up waiting thread if any
- __Mutual Exclusion__
  - init to 1
  - `P()` called before a critical section
  - `V()` called after critical section
- __Scheduling__
  - init to 0


```c
semaphore wait_l = 0;
semaphore wait_r = 0;
left_paw(){
    slide_l();
    V(wait_l);
    P(wait_l);
    slide_r();
}
right_paw(){
    P(wait_l);
    slide_l();
    slide_r();
    V(wait_r);
}
```

- constraints
    - the consume must wait if buffers are empty, scheduling constraints
    - the producer must wait if buffers are full
    -
