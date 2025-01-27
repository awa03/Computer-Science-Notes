# CPU Scheduler
- A _CPU scheduler_ is responsible for
	- removing a running process from CPU
	- Selection of the next running process
- Seek To Maximize:
	- _CPU Utilization_: keep the CPU as busy as possible
	- _Throughput_: the number of processes completed per unit of time
- Seek to Minimize:
	- _Response Time_: the time of submission to the time the first response is produced
	- _Wait Time_: total time spent waiting in the ready queue
	- _Turnaround time_: the time of submission to the time of completion
- Seek to achieve _fairness_ 
	- Guaranteed to have at least 1/n share
	- Tensions among fairness

## Scheduling Policies
- FIFO (__first in, first out__)
- Round Robin 
- SJF (__shortest job first__)
- Multilevel feedback queues
- Lottery Scheduling

### FIFO
- Assigns the CPU based on the order of requests
- _Nonpreemptive_: A process keeps running on the CPU until it is blocked or terminated
- Also known as _FCFS_ (First come, first serve)
- Simple to implement
- Short jobs can get stuck behind long jobs

### Round Robin
- Periodically releases the CPU from long-running jobs 
- Based on timer interrupts, short jobs can get a fair share of CPU time
- _Preemptive_: a process can be forced to leave its running state and replaced by another running process
- _Time Slice:_ interval between timer interrupts
- If time slice too long
	- Scheduling degrades to fifo
- If time slice too short
	- Throughput suffers
	- Context switching cost dominates

### FIFO vs. Round Robin
- __Round Robin__
	- Shorter response time 
	- Fair share of CPU
		- Not all jobs are preemptive
		- Not good for jobs of same length

### Shortest Job First (SJF)
- JSF runs whatever job puts the least demand on the CPU, also known as _STCF_ (shortest time to completion first).
- Provably optimal
- Great for short jobs
- Small degradation for long jobs
- __Supermarket Express Checkout__

### Shortest Remaining Time First (SRTF)
- Preemptive version of SJF
- If a job arrives with shorter time to completion SRTF preempts the CPU for the new jobs
- Also known as _SRTCF_ (shortest remaining time to completion first)
- Generally used as the base case for comparisons

### SJF & SRTF vs. FIFO and Round Robin
- If all jobs are the same length then __SJF & FIFO___ 
	- FIFO is the best you can use
- If jobs have varying length
	- Short jobs don't get stuck behind long jobs


### Drawbacks of Shortest Job First
- _Starvation_: constant arrivals of short jobs can keep long ones from running
- There is no way to know the completion time of jobs (most of the time)

### Multilevel Queues (Priority Scheduling)
- The process with highest priority runs first
- Assume low numbers represent high priority
- Generalization of SJF 
- use multiple queues with different priorities
	- Round robin at each priority level
	- Run highest priority jobs first
	- Once those finish, run next highest priority, etc
	- Jobs start in highest priority queue
	- time slice expires drop job by one level
	- if does not expire push job up by one level
- Approximates SRTF
	- CPU-bound job drops like a rock
	- I/O bound jobs stay near the top
	- Still unfair for long jobs
	- Counter-measure aging
	- Increase priority of long running jobs if they are not serviced for a period of time
	- Tricky to tune aging

### Lottery scheduling
- adaptive scheduling approach to address fairness of problem
	- Each process owns some tickets
	- On each time slice, a ticket is randomly picked 
	- On average, the allocated CPU time is proportional to the number of tickets given to each job
- Approximate SJF, short jobs get more tickets
- Avoid starvation, each job gets at least one ticket
- Good for coordinating computers with different computing power
- Good for controlling the schedules for child processes
- Not as good for real time systems
