# Socket Programming

## Threads
- A way to execute multiple concurrent flows of control within a single process
- __Linux__
  - Threads are implemented as kernel tasks that share resources
  - Each threads get their own TID (_Thread ID_)
  - All threads in a process share PID
  - Thread groups manage resource sharing and accounting
- IO bounded
  - sending back and forth and not doing much computation
- CPU bounded

## Python Threads

| Feature  | Posix Threads  | Python Threads  |
|:-:|:-:|:-:|
|   |   |   |
|   |   |   |

## CPU vs IO Bound Operations
- Matrix multiplication (CPU bound)
- Sorting (CPU bound)
- Sums (IO bound)
- Random Subset sums (IO bound)


> [!NOTE]
> Even though python cpu uses a lock it does not remove race conditions because thread operations are not atomic, meaning that they lock and unlock but each thread is not critical.
> A --- B --- A --- B
> A wont finish before B is called, they just do not run in parallel



```sh
ssh-keygen -t rsa -b 4096
```
