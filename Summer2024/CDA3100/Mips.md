
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

