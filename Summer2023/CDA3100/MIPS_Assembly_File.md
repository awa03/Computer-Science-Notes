<h4>What we have learned</h4>

R-type instructions - register addressing 
```
ADD
SUB
OR
AND
XOR
NOR
```

I-Type instructions - immediate addressing
```
ADDI
ANDI
ORI
XORI
```

I-type - unsigned 16 bit immediate
```
ADDIU
ANDIU
```

I-type instructions - 2 registers, 16 bit immediate (base-displacement addressing)
```
LW
SW
LH/SH
LB/SB
LHU, LBU
```

<h4>General format</h4>

```
.text

.globl main
main:
	# instructions here

.data
# allocation of memory
```

<h4>MIPS Directives</h4>

Directive|Meaning
-|-
`align n`|Align next datum on $2^n$ boundary
`.asciiz str`|Place the null-terminated string str in memory
`.byte b1,b2,..bn`|Place the n byte values in memory
`.data`|Switch to the data segment
`.double d1,d2,..dn`|Place the n double-precision value in memory
`.float f1,f2,..,fn`|Place the n single-precision value in memory
`.global sym`|The label sym can be referenced in other files
`.half h1, h2,..hn`|Place the n half-word values in memory
`.space n`|Allocated n bytes of space
`.text`|Switch to the text segment
`.word w1, w2,...wn`|Place the n word value in memory


For the register types visit [[Mips Registers]]
