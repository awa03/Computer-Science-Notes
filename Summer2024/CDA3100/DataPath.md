# Mips Data Path
- _Datapath_ and _control_ are the two components that come together to be collectively known as the processor
- Datapath consists of the functional units of the processor
	- Elements that hold data: PC, Register File, Instruction Memory, etc
	- Elements that operate on data: ALU, adder, etc
	- Buses for transferring data between elements
- Control commands that data path regarding when and how to route and operate on data

### Designing the Mips Processor
- Adders - A circuit that can add 2 numbers
- The ALU (add, sub, and, or, nor, slt)
- Registers - Banks for 32 flip flops per register
- Recall that a Mips program's instructions are encoded into 32 byte machine instructions by the assembly
- The instructions are in the text segment of the program
- The pointers for the data used for the program would be in the data segment
- The pointers are turned into memory references - names of the variables are replaced by their addresses - just like labels in the text segment
- Just before a program is run, it is "loaded" by the Operating system, onto ram.
- Therefore to run a MIPS program, each instruction has to be brought from RAM into the processor before it is executed
