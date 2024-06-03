### Inverter

| Input | Output |
| ----- | ------ |
| 0     | 1      |
| 1     | 0      |
Negates the input

****
### AND Gate

| Input A | Input B | Output Y |
| ------- | ------- | -------- |
| 0       | 0       | 0        |
| 0       | 1       | 0        |
| 1       | 0       | 0        |
| 1       | 1       | 1        |

And gates require both inputs to be true in order for the output to be true

****

### XOR Gate

| Input A | Input B | Output Y |
| ------- | ------- | -------- |
| 0       | 0       | 0        |
| 0       | 1       | 1        |
| 1       | 0       | 1        |
| 1       | 1       | 0        |
Xor Gates, or exclusive or gates require only one of the inputs to be true to resolve in a true statement.

****

### NAND

| Input A | Input B | Output Y |
| ------- | ------- | -------- |
| 0       | 0       | 1        |
| 0       | 1       | 1        |
| 1       | 0       | 1        |
| 1       | 1       | 0        |
A NAND or a negated and gate will negate the result of the and operation, meaning it will resolve in true unless both inputs hold true.

****

## Logic Blocks

- It is hard to implement an entire computer with singular gates, we build circuits by using a combination of several gates. 
- Logic blocks are built from gates that implement basic logic functions
- A logic block is **deterministic**. That means we have to specify the output for every possible combination of the input
- To build a logic block, we 
	- Determine the outputs for the required function, given the inputs in all possible combinations. This can be done using a truth table
	- Determine the logic function of each of the outputs. 
	- Build the circuit using logic gates

### Half Adder

$$Sum = A!B + AB!$$

$$Carry = AB$$
### 1 Bit Adder (Full Adder)
- The outputs would be a sum bit for this bit and a Carry-out bit that would become the carry-in bit for the next
- The first step is designing a digital circuit usually is to fill out a truth table
- We can then derive the **Logic Equation** of each output bit
- Xor gates are not used a lot in actual hardware since they're much bigger than AND or OR gates.

### Gate Delays
- Hardware has delays
- Gate Delay is defined as the time elapsed from time the input being stable to the time when the input is stable

### Simplifying Digital Circuits
- The logic equation for the carry-out bit was: `A!.B.C + A.B!.C + A.B.C + A.B.C!`
- This can be simplified to: `A.B + B.C + C.A`
- There are many methods to simplify the circuit
	- Using Boolean Algebra
	- Using Karnaugh-Maps
	- By Repetition and pattern recognition

**Identity Law**
`A + 0 = A abd A.1 = A`

**Zero and One Laws**
`A + 1 = 1 and A.0 + 0`

**Inverse Laws**
`A + A! = 1 and A.A! = 0`

**Commutative Laws**
`A + B = B + A and A.B = B.A`

**Associative Laws**
`A + (B + C) = (A + B) + C and A.(B.C) = (A.B).C`

**Distributive Laws**
`A.(B + C) = A.B + A.C and A + (B.C) = (A + B).(A + C)`

**Idempotent Laws**
`A.A = A and A + A = A`

****
### Karnaugh Maps

- Uses two rules: `A + A = A` and `AB + AB' = A`
- Arrange rows in the truth table as square's on a K-Map, using gray-coded ordering
- Place 1's in the squares corresponding to the True Rows.
- Group consecutive 1's in groups of powers of 2 - 16
- Reduce the terms by writing down the variables who's values do not change in the group
- Cannot group 3, because groupings must be powers of 2. 

****

### ALU With Subtraction
If subtraction we need to
- Invert the second operand
- Set the Carry in of the last bit of the full adder to be 1
- Select the adder output

Every time we want the ALU to subtract, we set both the carry in and binvert to one. For add or logic operations we want these lines to be 0.

We can therefore simply control of the ALU by combining the Carry In and Binvert to a single control line called BNE gate.






