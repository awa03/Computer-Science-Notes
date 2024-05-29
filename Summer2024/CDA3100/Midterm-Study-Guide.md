# Study Guide

#### **What are the 8 great Architectural Idea's**
1) Design for Moore's Law
2) Use Abstraction to simplify design
3) Make Common Case Fast
4) Performance via Parallelism
5) Performance via Pipelining
6)  Performance via Prediction
7) Hierarchy of memories
8) Dependability via redundancy

#### **Explain Measuring Performance - CPU Time, Clock Rates, Instruction Time, CPI**

Discussing performance mandates that we understand **Latency (response Time)**, the time between the start and the completion of an event, and **Throughput (bandwidth)**, the total amount of work done in a given period of time.  

**Performance** has an inverse relationship with execution time, aka the less execution time the better the performance and vice versa. This means that we can use the following formula to determine the performance.

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(1).png" alt="Equation image" />
</div>

Therefore we can also use this formula to determine the difference in performance (also used to determine which is greater). This comparison can be done using the following formula. We can use this to our advantage to be able to gauge **Relative Performance**. This will allow us to declare statements such as _Program A is N times faster than Program B_. To understand this we use the following formula:

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation.png" alt="Equation image" />
</div>

There are several ways in which we can measure the execution time on a machine.
- **Elapsed Time**: Total wall clock time needed to perform a task
- **CPU Time**: Time CPU spends on the task, not including I/O
- **User CPU Time**: Time CPU spend in the program
- **System CPU Time**: Time CPU spent in the OS doing actions on behalf of the program

It may be useful to look at performance through other metrics than time, such as how fast a computer can perform some basic operations. Here are some more terms we use for these. 
- **Clock Cycle**: The basic discrete intervals of a processor clock, constant rate
- **Clock Period**: the length of each clock cycle
- **Clock Rate**: inverse of the clock period

In order to determine the effect of a change on performance we must apply the following:
<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(2).png" alt="Equation image" />
</div>

This can alternatively be expressed as, 

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(3).png" alt="Equation image" />
</div>

From this we can see that we can reduce the execution time by either reducing the number of clock cycles required or the length of each clock cycle.

Another useful formula is for the CPU clock cycles. This can be calculated by finding the number of instructions for a program and multiplying it by the Average Clock Cycles per instruction. This can be seen below, as well as the formula for the **CPI**.

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(4).png" alt="Equation image" />
</div>

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(5).png" alt="Equation image" />
</div>

The **CPI** is the clock cycles per instruction.

Now rewriting the basic equation in terms of the instruction count, CPI, and clock cycle time we achieve.

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(7).png" alt="Equation image" />
</div>

Or Alternatively, 

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(6).png" alt="Equation image" />
</div>

#### **What is AMDAHL'S Law?**

Amdahl's Law states that the performance improvement that is gained from using a faster mode of execution is limited by the fraction of the time the new faster mode can use.

This means that Amdahl's law is dependent on two factors
- The fraction of time the enhancement can be exploited
- The improvement gained by the enhancement while it is exploited

<div style="background-color: white; display: inline-block; padding: 10px;">
    <img src="../../equation(8).png" alt="Equation image" />
</div>

#### **Converting decimal numbers to binary**

**View Page's in notebook, will be uploaded here in form of pdf.**

#### **Converting binary numbers to decimal**

**View Page's in notebook, will be uploaded here in form of pdf.**

#### **Converting 2's complement negative numbers**

**View Page's in notebook, will be uploaded here in form of pdf.**

#### **Representing hex numbers**

**View Page's in notebook, will be uploaded here in form of pdf.**

#### **Binary addition**

**View Page's in notebook, will be uploaded here in form of pdf.**

#### **Binary Subtraction**

**View Page's in notebook, will be uploaded here in form of pdf.**

#### **Sign Extension**

**View Page's in notebook, will be uploaded here in form of pdf.**






#### PDF Version (If Color Issues)
<div style="background-color: white; display: inline-block; padding: 10px; border: 1px solid #ddd;">
    <a href="../../Midterm-Study-Guide.pdf" style="text-decoration: none; color: black;">
        <img src="pdf-icon.png" alt="PDF icon" style="vertical-align: middle;"/>
        <span style="vertical-align: middle;">Midterm Study Guide</span>
    </a>
</div>
