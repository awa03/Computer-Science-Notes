# Sockets to Parallelism


### Threads
- a way to execute multiple concurrent flows of control with a single process
- threads are implemented as kernel tasks that share resources
- each thread gets its own thread id
- all threads share a process id
- thread groups manage resource sharing and accounting


| Feature  | Posix Thread  | Python Threads  |
|:-:|:-:|:-:|
| Memory Model  | Direct shared memory access  | Shared memory but GIL-controlled  |
| Creation overhead  | lightweight  | similar overhead  |
| Thread safety  | manually synchronization required  | built-in thread safe object  |
| Implementation | native OS implementation | Python interpreter managed

- The Global interpreter lock is a road block
- IO bound operations benifit from it (_this is very dependent on the implementation, im saying this not my teacher..._)

### CPU vs IO Bound Operations
- matrix multiplication (cpu bound)
- sorting (depends...)
- sums (depends...)
- random subset sums (io bound)
- technically all of these are dependent but
