## Computer Model

**Processor**
- ALU - Does some math
- Register - Intermediary Storage, currently in use variables

**Memory** 
- Data & Instructions
- Code needs to move to the processor 
- Needs to know what / how to perform operations

****
### Registers 

- A processor has registers and the ALU
- Registers are where you store values
- The values stored in registers are sent to the ALU to be added, subtracted, anded, ored... then the result is stored back in a register
- The heart of the processor and does the calculation

### Program And Data

- Programs consist of instructions and data, both stored in the memory
- Instructions are also represented by 0's and 1's

### Machine Language

- To work with the machine, we need a translator
- Assembly languages serve as and intermediate form between the human readable programming language and the machine-understandable binary form. 

****

### MIPS 

- Risc (Reduced Instruction Set Computer)
- fixed instruction lengths
- load-store instruction sets
- limited number of operations

#### Design Philosphy

- Simplicity favors regularity
	- Consistent instruction size, instruction formats, data formats
	- Eases Implementation by simplifying hardware
- Smaller is faster
	- Use the register file instead of slower memory
- Make the common case fast
	- Small constants are common, thus small immediate fields should be used
- Good design demands good compromises

### For Assembly

- Flip conditional's `i < 20 -- i == 20`