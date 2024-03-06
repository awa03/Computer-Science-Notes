
- The development system, which includes development tools such as compilers, source code editors, etc
- The build server which is used to build definitive, executable versions of the systems. The sever maintains the definitive versions of a system
- The target environment, which is the platform which the system executes


### Agile building

- Once a system has passed its tests, check it into the build system but do not commit it as a new system baseline


### Coding Practices

- Set of guidelines and methodologies that software developers follow when writing code. These practices are aimed at improving the quality, readability, maintainability, and efficiency of the code

#### Self Documenting Code

- Code is written in such a way that its purpose, intent, and functionality is clear and understandable without the need for extensive documentation
- Rare 
- Can the code artifact be understood easily and unambiguously by the programmers


#### Code smells

- Code smells are any characteristic in the source code of a program that possibly indicates a deeper problem
	- Parts of code not implemented well
- If it "smells" its bad
- They are not bugs
	- Smelly code works
	- Increase bug proneness
- Symptoms of other problems 
	- Not a silver bullet to solve


#### Improve Smelly

- **Refactoring** is to improve the design, readability, and maintainability of the code, making it easier to comprehend reducing errors
- Variable names
	- In extreme cases can lead to product failure
	- Should be meaningful and consistent
	- use the same word to refer to the same concept through the project
- Long Method
	- Code is easier to write than it is to read
	- Separate or break down events into meaningful functions
- Large Class
	- Violating the **single responsibility principle** 
	- Developers add just one more capability to a class until its too big
	- Common Refactoring Techniques
		- Extract class
		- Extract sub class
		- Avoid duplication
- A long list of parameters might happen after severao types of algorithms are merged in a signle method