### Independent Threads
- no states shared with other threads
- _Deterministic computation_
  - Output depends on the input
- Reproducible
  - output does not depend on the order and timing of other threads

### Cooperating Threads
- Shared states
- __Nondeterministic_
- __Nonreproducable__
- shared resources
- speedup
  - occurs when threads use different resources at the same times
- Modularity
  - an application can be decomposed into threads
- if threads work on different data the scheduling doe not matter
  - unless one relys on anothers data :)
  - _race conditions_ occur when threads share data, and their results depend on timing of executions

### Atomic Operations
- an _atomic operation_ always runs to completion; all or nothing
- Many operations are not atomic
