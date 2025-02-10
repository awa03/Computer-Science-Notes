# Synchroization
- uses atomic operations to ensure cooperation among threads
- _mutual exclusion_: ensures one thread can do something without the interference of another thread
- _critical section_:
- A _lock_ prevents a thread from doing something
  - a thread should lock before entering a critical section
  - a thread should unlock when leaving the critical section
  - _synchronization_ involves waiting
-

## Solution 1
```c
if (no milk){
    if(no note) }{
       // leave a note
       // go get milk
       // remove the note
    }
}
```

- This control flow has a problem...
- The notes are being posted too late

## Solution 2
```c
if (no note from the other){
    if(no milk){
        // go get milk
    }
}
// remove the note
```

- more elegant with higher level primatives
- lock aquire()
