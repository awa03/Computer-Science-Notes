## Mips Instruction Set Architecture

- Microprocessor without the interlocked pipeline stages
- A Risc (Reduced Instruction Set Computer) 
- **Instruction** : Command recognized by the architecture
- Arithmetic (bitwise operations)
	- Add, subtract, multiply, divide
- Logical 
	- And, or, nor, not, shift
- Data transfer
	- load from or store to memory
- Transfer of control
	- Jumps, branches, calls, returns


Each mips arithmetic instruction performs only one operation
- each one must always have exactly three variables
- We must breakup more complex instructions

```asm
# For (a = b + c)
add a, b, c 

# For (f = (g + h) - (i + j))
add t0, g, h
add t1, i, j
sub f, t0, t1
```

- Mips has thirty-two 32 bit registers
- Registers are build directly into the hardware of the machine
- Registers correspond to variables in a high level programming language, and constants are integer / float literals
- Reflects design principle 2, *Smaller is faster*

```asm
$zero - const 0
Registers 16-23: $s0 - $s7
$at - 1 assembler temporary
$v0-$v1 - Function results and expression evaluation
$a0 - $a3 - Arguments
$t0 - $t9 - Temporary
$s0 - $s7 - Saved temporarys
$k0 - $k1 - Reserved OS kernel
$gp - global pointer
$sp - stack pointer
$fp - frame pointer
$ra - return address
```

## General Form 

```asm
Instuction $target, $source1, $source2
```

>[!NOTE]
> MIPS is case insensative

****
## Immediate

- 16 bits maximum, MIPS
- No subtraction for immediate (add a negative instead)
- We can add unsigned immediate's using  `addiu`

****

## Memory Operands

- `lw (load word)`
- `sw (store word)`

How would we represent array indexing such as: `g = h + A[5]`

```asm
lw $t0, 20($s3) # load element at 20 byte offset
add $s1, $s2, $t0
```

- Can load into the same register
- **Offset must be an immediate, the base must be in a register.**
- Mips requires alignment of memory references to be an integer multiple of the size of the data being accessed
- Memory is organized as an array of bytes

****
## MIPS Instruction Set Architecture

- Store word will allow us to place data within memory, for example if we wanted to store the value 8 in an array we would use the following

```asm
sw $t2, 8($s0) 
# s0 storing the array starting index, 8 being the offset and t2 being the value that will be stored. 
```

****

## C to ASM

```c
temp = arr[i]
arr[i] = arr[i + 1]
arr[i + 1] = temp
```

```asm
lw $t1, 0($t0) # get arr[0]
lw $t2, 4($t0) # get arr[1]
sw $t2, 0($t0) # arr[0] = t2
sw $t1, 4($t0) # arr[1] = t1
```

****
## Shift Instructions

- Shift left logical `sll` move all the bits to the left by a specified number of bits. emptied bits with 0
- Shift right logical `srl` move all the bits to the right (fill empty bits with 0)
- Shift right arithmetic `sra` move all bits to the right (fill with sign bit)

>[!NOTE]
>We can check if a number is odd or even by performing and operations with 1, 0.

****
## Branching and Looping 

```asm
# general format
.text
.globl main
main:
	# instructions here
.data
```


### MIPS Directives

| Directive       | Meaning                                |
| --------------- | -------------------------------------- |
| .align n        | Align next datum on 2^n boundary       |
| .asciiz str     | Place "c-string" (basically) in memory |
| .data           | Switch to the data segment             |
| .float          |                                        |
| .double         |                                        |
| .global sym     | can be accessed in other files         |
| .space n        | allocate n bytes                       |
| .text           | switch to the text segment             |
| .word w1, w2... | Place the n word values in memory      |
### Label's

- A label is used to indicate memory, branch targets, and function names
- The convention is to label lines with something meaningful
- When placed in the beginning of a line, labels are followed by a colon

****

### BEQ (Branch if Equal)

- Compares two registers, and provides a branch target (where it needs to go)
- In other words the opposite effect of an if statement

```asm
beq register1, register2, L1
```

- There is also Branch if not equal, this allows us to do the opposite effect

### J (Unconditional Jump)

```asm
j L1
```

### Compiling an If Statement

```asm
bne $t2, $t3, L1
addu $t4, $t4, $t2
```

### Set Less Than Instruction

- We can compare register values using `slt` 
- We can also compare to immediate's using `slti`

```asm
slt $t3, $t1, $t2 # set t3 to 1 if t1 < t2 else false
```

### For Loop

```asm
loop: sll $t5, $t3, 2
	  addi $t3, $t3, 1
test: bne $t3, $t2, loop
```

### Data Segment

- The code has a data segment and a code segment
- The beginning of the data segment in the assembly source code is indicated as `.data`

### Syscall's

- The syscall instruction jumps to a system call and can be used to implement a stored procedure that allows the system to take over and run some code, usually for I/O operations
- The "syscall code" is an integer stored in `$v0`, which tells the system which operation to perform
- Some MIPS system calls are shown in the panel on the right

****
## Encoding Instructions

opcode - instruction opcode
rs - first register source operand
rt - second register source operand
rd - register destination
shamt - shift amount
funct code - additional opcodes
immed - offsets / functions

$$
 (Target - Curr) / 4
$$

The branch target is the number of lines from the next instruction, so this can be positive or negative (given jumps).

****

## Mips 6

We can allocate memory starting at the stack pointer. `$sp` needs to be subtracted from since it grow's downwards. 

Hence, `addi $sp, $sp, -4` will subtract from the current stack allocating the memory downwards.  


### Recursive Functions

- Recursive functions will keep calling themself until the terminating condition is met 
- There is an implicit loop built into this structure

### Floating Point 

- Integers are stored as 2's complement binary numbers, floating point numbers are stored in the IEEE 754 sign-magnitude notation.
- This means we need different hardware to do the same operations for integers and floating point numbers
- Mips gives us **32** general purpose single precision floating point registers
- The SAME registers can also be combined to hold 16 double precision floating point registers
- The use of single / double precision arithmetic is chosen by the instruction suffix
- Every floating point instruction specifies whether we are doing single precision or double precision arithmetic

```asm
# Loads the single precision float stored at that address
L.S $f0, LABEL

# Loads immediate value into a register
LI.S $f2, 3.141592

# move a value from co processor to the main processor
MFC1 $t0, $f0 # copy

# move a value from the main processor to coprocessor
MTC1 $t0, $f0

# copy values within coprocessor
MOV.S $f2, $f8

# converts from int to float
CVT.S.W $f0, $f1

# convert from float to int 
CVT.W.S $f0, $f3

# other operations
add.s
abs.s
div.s
mult.s

# comparision
c.le.s # set less than
bc1t l1 # branch if flag set

# printing
li $v0, 2
li.s $f10, 0.5
syscall

# read
li $v0, 6
syscall
```








