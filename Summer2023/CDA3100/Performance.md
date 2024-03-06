<b>Measuring the performance of a computer</b>

<u>Latency (response time)</u> - is the time between the stand and completion of an event
<u>Throughput (bandwidth)</u> - is the total amount of work done in a given period of time

1. Replacing your processor with a faster one will:
	- increase throughput and decrease latency

2. Adding additional processors to a system 
	- Only throughput will increase

><b>Performance is the inverse of time</b>

$$Performance = \frac{1}{ExecutionTime}$$
$$Performance (x) > Performance (y)$$
Term | Definition
-|-
Elapsed Time|total wall clock time needed for task
CPU Time|time cpu spends actually working on the program
User CPU Time|CPU time spent in the program itself
System CPU Time|CPU time spend in the OS, performing tasks
Clock Cycle|the basic discrete time of a processor clock
Clock Period|the length of each clock cycle
Clock Rate|inverse of the clock period

>Elapsed Time VS. the CPU Time may show I/O inefficenys, due to confusion of the user

Term|Definition
-|-
Bit|Binary digit
Nibble|Four bits
Byte|Eight bits
Word|four bytes(32 bits)
Kibibyte (KiB)|2^10 (1024) bytes

$$
CPU ExecutionTime = CPUClockCycles *Clock Period
$$

$$CPUClockCycles = Instructions * Average Clock Cycles Per Instruction$$

- The average number of clock cycles per instruction is often abbreviated as CPI. The above equation can be rearranged to give the following

$$CPI = \frac{CPUClockCycles}{InstructionCount}$$

<b>Computer A: Clock cycle time 250ps and 2.0 CPI</b>
<b>Computer B: Clock cycle time 500ps and 1.2 CPI</b>
<b>Which Is Faster?</b>
$$ComputerA(250 * 2.0) < ComputerB(500 * 1.2)$$
From this we can gather the basic equation
$$CPUTime = InstructionCount * CPI * ClockPeriod$$
Or
$$CPUTime = \frac{InstructionCount*CPI}{ClockRate}$$

Component | Unit Of Measure
-|-
CPU Execution Time|Seconds (for the program)
Instruction Count|Instructions Executed 
Clock Cycles Per Instruction|Avg Number of Clock Cycles
Clock Cycle Time (Clock Period)|Seconds Per Clock Cycle

- No one of these factors makes a CPU <i><b>FASTER</b></i> so we must look at all factors in determining the speed of a computer

<h3>Amdahl's Law</h3>

Amdahl's Law states that the performance improvement to be gained from some faster mode of execution is lmited by the time the faster mode can be used


$$Improved ExecutionTime = \frac{AffectedExecutionTime}{AmountOfImprovement} + UnaffectedExecutionTime$$

<h2>Energy Efficient Processors</h2>

- Extend battery life for mobile systems
- Reduce heat dissipation for general purpose processors
- Energy cost for increasing

Enhanced capability available to users led to new classes of computers. This led to the dominance of microprocessor-based computers. Allowing programmers to trade performance for productivity. Nature of applications is changing because of this fact.

[[Computer Science Notes/CDA 3100/Index|Index]]
