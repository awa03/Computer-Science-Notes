- A <b>Computer Program</b> is a set of instructions for a Computer to carry out
- "Computer Programming " is the practice of learning to communicate with a computer so that you can request information from it

<h2>Progression Of Programming</h2>
Unlike humans, computers only understand things in terms of high and low voltage signals. This is represented as binary code. 
Generation | Progression
-|-
Gen 4 | Declarative (Python, Matlab)
Gen 3 c| Functional (F#, Haskell)
Gen 3 b| Object-Oriented (C++, C#)
Gen 3 a| Procedural (C, AlGOL)

For More info on the ways computers work look at: [[What is a Computer?]]

Types inside of functional languages are immutable. This is not the case for object oriented languages, this can be seen through

<b>C++</b>
`void FlipFlop(int &x, int &y){
	`int temp= x;`
	`x = y;`
	`y = temp;`
`};`

This allows for variable mutation, aka when variables data changes.

- With <u>Procedural Programming</u>, instructions can be modularized into actions and subactions (routine & subroutine)
- With <u>Object Oriented</u> languages we have instances of classes, example a car. Cars may be green, blue, etc however they are all constructed the same. They are abstracted using modularized parts.

Classes are C++ code segments that act as templates for objects. These objects are instances of a class.

Classes encapsulate two concepts: 
	- State: Color, Owner, Name
	- Behavior: Sit, Bark, Wag Tail

Each are independant from one another. Therefore changing the information within one dog will not change the information for all dogs.

> Structs are state only, however this line between structs and classes has blurred in recent years.



[[Computer Science Notes/COP 3330/Index]]