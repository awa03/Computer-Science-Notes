# Abstract Syntax Tree

__Abstract Syntactic__: the structure of described independent of its representation or encoding

__Abstract Syntax Tree__: A tree representation of a _abstract syntactic_ written in a formal language. A node within this tree represents a syntactical construct within the text.

### Design
- Variable types preserved
	- Location of each deceleration in source code
- Order of executable statements represented explicitly and well defined
- Left and right components must be stored
- Identifiers and assigned values stored for assignments
- Arbitrarily large amount of children?
- Flexible enough to account for unknown children
- Able to unparse an AST into source code

### Use Case
- Represent structure of a program
- result of syntax analysis phase of a compiler
- Contains extra information about the program due to consecutive stages of analysis by the compiler
	- position of each element in source code
- enforcing language requires context
- semantic analysis
- symbol tables based on AST
- allows for program verification
