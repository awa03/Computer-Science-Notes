## Performance

Being able to gauge the relative performance of a computer is important but tricky task. We need to be able to define a measure of performance. 
#### What Can Affect Performance
- Architecture
- Hardware implementation of the architecture
- Compiler for the architecture 
- Operating System

To discuss performance, we need to be familiar with two terms:
- **Latency (Response Time)** is the time between the start and completion of an event
- **Throughput (bandwidth)** is the total amount of work done in a give period
Latency is particularly important when gauging the performance of computers.

Performance has an inverse relationship to the execution time.

$$Performance  = \frac{1}{ExecutionTime}$$

Relative performance may be defined as 
$$\frac{program_1}{program_2} = \frac{exeTime_1}{exeTime_2}$$	
- **Elapsed time** : total wall clock time needed to complete a task (including I/O, etc)
- **CPU time** : time CPU spends actually working on behalf of the program.
- **User CPU time** : CPU time spent in the program itself
- **System CPU time** : CPU time spent in the OS
- **Clock Cycle** : the basic discrete time intervals of a processor clock, which runs at constant rate
- **Clock period** : the length of each clock cycle
- **Clock Rate** : inverse of the clock period

| Clock Period | Clock Rates     |
| ------------ | --------------- |
| milisecond   | kilohertz (KHZ) |
**bit** - binary digit
**nibble** - four bits
**byte** - eight bits
**word** - four bytes


****

## CPU Performance

$$CPUExecutionTime = CPUClockCycles * ClockPeriod$$

> [!NOTE] 
> GHZ should be in the form $2 * 10^9$

This can also be expressed as the following:
$$CPUTime = \frac{Instruction Count * CPI}{Clock Rate}$$

**Example Questions**
Suppose we have two implementations of the same instruction set architecture. Computer A has a clock cycle time of 250 ps and a CPI of 2.0 for some program, and computer B has a clock cycle time of 500 ps and a CPI of 1.2 for the same program. 

**B is faster for this program and by a factor of 1.2**

| Component                        | Unit of Measure                                |
| -------------------------------- | ---------------------------------------------- |
| CPU Execution time for a Program | Seconds                                        |
| Instruction Count                | Instructions Executed for the program          |
| Clock Cycles per Instruction     | Average Number of Clock Cycles Per Instruction |
| Clock Cycle Time (Clock Period)  | Seconds Per clock Cycle                        |

****

## Amdahl's Law

States that the performance improvement to be gained from using some faster mode of execution is limited by the fraction of the time the faster mode can be used. It depends on two factors, the fraction of time the enhancement can be exploited, and the improvement gained by the enhancement while it is exploited

$$ImprovedTime = \frac{AffectedTime}{AmountOfImprovement} + UnaffectedTime$$

Amdahl's law is more of an economic theory, you can only optimize and improve one part of a problem. Commonly this case is a central portion of your program, not 100% just some percent. 


### Energy Efficiency Processors

- Extend battery life for mobile systems
- Reduce heat dissipation for general-purpose processors. 
- Energy cost for computing is increasing.
- **The power wall** refers to the issue that clock rates are not able to increase further due to temperature limitations.

### Trends in Implementation Technology

- Transistors count on a chip is increasing by about %40 - 55 a year or doubling every 18 to 24 months (Moore's Law)
- DRAM capacity per chip is increasing by about 25% to 40% a year doubling every two to three years. 
- Flash capacity per chip is increasing by about 50% to 60% a year, doubling recently about every 1.5 years. Flash memory is about 15 to 20% cheaper per byte than DRAM

****

