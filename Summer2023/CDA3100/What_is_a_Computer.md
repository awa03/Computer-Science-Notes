[[Syllabus]]
<h2>Why Study Computer Organization</h2>
<i>"The Medium is the Message"</i> - Marshall McLuhan

- We must be effective at understanding the medium (computers) in order to more effectively understand how to use them.
- Why some methods are more effective than others
- Why do supercomputers run numerical methods multiple times
- Why is a program written diffrently depending on the machine, for some languages 

<h2>Abstraction is the KEY to Computing</h2>

Abstraction | Examples
-|-
Multi-level translation | Different Languages and systems can work together 
Number Representations | Applied in Networks
Processor Design and Pipelining | Different architecture for diffrent needs


<h2>What is a Computer</h2>

Anything with a processor, and the ability to "compute"!

<b>A computer is divided into 3 classes</b>
	- Desktop 
	- Servers
	- Embedded Computers

A PMD (personal mobile device) is a newer class of computers, that have become larger than these other types of computers. It can be carried around, however this develops the problem of conserving power. PMD have batteries, and they are portable making them diffrent than the other types. 

<h2>Eight Great Architectural Ideas</h2>

- Design for Moore's Law
- Use abstraction to simplify design
- Make common case fast
- Performance via parallelism
- Performance via pipelining
- Performance via prediction
- Hierarchy of memories
- Dependability of redundancy 

<b>Design For Moore's Law</b>

- The number of transistors on a chip doubles every 18-24 months
- Architects have to anticipate where technology will be when the design of a system is completed
- Use of the principle is limited by Dennard Scaling

> Dennard Scaling - Law of Diminishing returns

<b>Use of abstraction to simplify design</b>
- Abstraction is used to represent diffrent levels of a design
- Lower-level details can be hidden to provide a simpler models at higher levels

<b>Make the common case fast</b>
- Identify the common case and try and improve it
- Most cost efficent method

<b>Via Parellelism</b>

<b>Via pipelining</b>
- Break tastks into smaller tasks so they can be simultaneosly preformed in diffrent stages
- Commonly used to improve instruction thoughput

<b>Via Prediction</b>
- Sometimes faster to assume a particular result than waiting until the result is known
- Known as <u>speculation</u> and is used to guess branches

<b>Use a hierarchy of memories</b>
- Make the fastest, smallest, and most expensive per bit memory the first level accessed and the slowest largest, and cheapest per bit memory the last level accessed
- Allows most of the accesses to be caught aat the first level and be able to retain most of the information

> Moving some of the memory to specific places so we can find it faster

 <b>Improve dependability via redundancy</b>
 - Include redundant components that can both detect and often correct failures
 - Used at many diffrent levels

<h2>Program Levels and Translation</h2>

The computer speaks in terms of electrical signals
- > 0V is "on" and 0V is "off"
- 1 is "on", 0 is "off"

> The Compiler only takes you as far as assembly code


Stage | Definition
-|-
Compiler | Translates a high-level language to assembly
Assembler | Symbolic representation of instructions
Linker | Combines multiple files into a single ex


For day 2 notes check [[Performance]]

