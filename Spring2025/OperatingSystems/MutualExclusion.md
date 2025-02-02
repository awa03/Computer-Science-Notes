# Mutual Exclusion
- High level atomic operations
  - Locks
  - Semaphors
  - Monitors
  - Send / Receive
- Low Level atomic operations
  - Load / Store
  - Interrupts
  - Disables
  - `test and set`

## Disable Interrupts (for Uniprocessors)
- One way to make an atomic operation is to disallow context switch to occur in the middle of an operation

### Solution 1

```cpp
Lock::Acquire(){
    // disable interrupts
}
Lock::Release(){
    // enable interrupts
}

// usage
lock.Acquire();
if(no milk){
    // get milk
}
lock.Release();
```

- user-level program may not re-enable interrupts
  - os cannot regain control
- no time guarantees during the duration of interrupt
- will not work with nested locks

### Solution 2

```cpp
class Lock {
    int value = FREE;
}

Lock::Acquire(){
    // disable interrupts
    while(value != FREE){
        // enable interrupts
        // disable interrupts
    }
    value = BUSY;
    // enable interrupt
}

Lock::Release(){
    // disable interrupt
    value = FREE;
    // enable interrupt
}
```

- works for a single processor
- will not work on multi processor machines
  - other CPU's can still enter critical section

### Solution 3 (`test_and_set`)
- works on multiprocessor
- atomically reads a memory location
- sets to 1
- returns the old value of memory location

```cpp
Lock::Acquire() {
    // while the previous value is busy, loop (busy waiting)
    while(test_and_set(value) == 1);
}

Lock::Release(){
    value = 0;
}
```


- __Busy-waiting__: hoggin CPU cycles while a thread is waiting for a lock
  - Very inefficient
  - Avoid with a waiting queue

### Locks Using Interrupt Disables, without Busy-Waiting
```cpp
class Lock {
  ...
  int value = FREE
}

Lock::Acquire() {
  // disable interrupts
  if(value != FREE){
    // Queue the thread
    // Go to sleep
  } else {
    value = BUSY
  }
  // enable interrupt
}

Lock::Release(){
  // diable interrupts
  if(someone is waiting){
    // wake a thread
    // put it on ready queue
  }
  else {
    value = FREE;
  }
  // enable interrupts
}
```

- Interrupt disable and enable operations occur accross cotext switches (at the steady state)

__Thread A will:__
- Disable Interrupts
- Sleep

_Context Switch_

__Thread B Will__:
- Return from sleep
- Enable Interrupts
- Disable interrupts
- Sleep

_Context Switch_

__Thread A will:__
- Return from sleep
- Enable Interrupts

### Locks using `test_and_set` (Minimal Busy Waiting)
- Impossible for `test_and_set` to avoid busy waiting
- Waiting minimized

```cpp
class Lock {
  int value = FREE;
  int guard = 0;
}

Lock::Acquire() {
  while(test_and_set(guard));
  if(value != FREE){
    // queue the thread
    // guard = 0 and sleep
  }
  else {
    value = BUSY;
  }
  guard = 0;
}

Lock::Release(){
  while(test_and_set(guard));
  if(anyone waiting){
    // wake up one thread
    // put on ready queue
  }
  else {
    value = FREE;
  }
  guard = 0;
}
```
