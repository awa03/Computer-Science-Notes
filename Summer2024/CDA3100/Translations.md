## Translations

- There are four general areas of memory in a process
- The **Text Area** contains the instructions for the application and is fixed in size 
- The **Static Data Area** is also fixed in size and contains:
	- Global variables
	- Static local variables
	- String and sometimes floating point constants
- The **Runtime-Stack** 
	- Contains activation records, each containing information associated with a function invocation
	- Saved values of callee-saved register
	- Local variables and arguments not allocated to registers
	- Space for the maximum words of arguments passed on stack to other functions
- The **heap** contains dynamically allocated data

String literals will be placed in the global memory


![[Assets/Stack.png]]
****

## Organization of Process Memory

- This is the convention for memory allocation in a process
- The stack starts at the higher-end of memory and grows downwards, while the heap grows upwards in the same space. 
- The lower end is reserved

### The Translation Process

- Preprocessing
- Compiling
- Assembling
- Linking 
- Loading

### Preprocessing 

Some preliminary processing is performed on C or C++ file. 
- Definitions and macros
- File inclusion
- Condition compilation

### Compile

- Responsible for:
	- Checking syntax
	- Making semantic checks
	- Performing optimizations to improve performance, code size, and energy usage.

### Assembling

- Assemblers take an assembly language file as input and produce an object file
- Assembling is typically accomplished in two passes
- **First Pass**: stores all of the identifiers representing addresses or values in a table there can be forward references
- **Second pass**: translates the instructions and data into bits for the object file

#### Object File

- An **Object File header** describing the size and position of the other portions of the object file
- **The text segment** containing the machine instructions
- The **data segment** containing the data values
- **Relocations Information** identifying the list of instructions and data words that depend on absolute addresses
- **Symbol Tables** contain global labels and associated addresses in object file and the list of unresolved references
- **Debugging Information** Allow a symbolic debugger. 

### Linking 

- Linker takes object files and object libraries as input and produce an executable file as output
- Linker aborts if refrences cannot be resolved

### Loading 
- Reads the executable file header to determine size
- Initialize stack pointer and registers

****

## Stored Program Memory

- Switch between context by the program switch
- The best way to switch is called **Scheduling Algorithms**

****
