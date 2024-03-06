 
<h3>Single Responsibility Principle</h3>

- Classes should have one and only one job
- If this principle is broken, it becomes increasingly difficult to:
	- Track a bug or feature 
	- Minimize the impact of requirement changes
	- Write automated unit tests
- A class should only have one reason to change

<h3>Liskov Substitution Principle</h3>

- The idea behind Liskov substitution is that a parent class can be replaced by a <strong>subclass</strong> without breaking the application
- Minimizes coupling and maximizes reuse

<h3>Interface Segregation Principle</h3>

- The more poorly implemented methods, the more likely that domain boundaries are not set correctly in your design.
- Major coding patterns will not function appropriately if interfaces are not implemented correctly
- If you consider what external users will see when trying to use your class it makes a lot of sense - if there are 200 methods, and 198 of them have empty implementations, there's a design problem
- General printer interface should be replaced with <strong>Print, Scan, Fax</strong>

<h3>Dependency Inversion Principle: Why?</h3>

- A Patient monitor class is tightly coupled with specific alert mechanisms
- Implement the dependency inversion principle by introducing an alert interface, serving as an abstraction to decouple patient monitor from specific alert mechanisms, enhancing flexibility.

<h3>Sequence Diagram</h3>

- Sequence models show the sequence of object interactions that take place
- Usually considers small, discrete pieces of the system, eg.., individual use cases or operations
- **Horizontal Axis** is for objects: objects that initiate interaction are the leftmost
- **Vertical Axis** is for time

<h3>Message Passing</h3>

- **Call** : Invoke an operation, shown with a filled arrowhead
- **Send** : Sends a message to an object, shown with an open arrowhead
- **Return** : Returns a value to called, shown with a dashed line
- **Create** : Creates an object, shown with a dashed line with an open arrowhead

<h3>Interaction Fragments</h3>

- Interaction use L an interaction fragment which allows to call another interactions

Type|Full Name
-|-
alt|alternative
opt|option
loop|iteration
break|break
par|parallel
strict|strict sequencing
seq|weak sequencing
critical|critical region
ignore|ignore
consider|consider
neg|negative

<h3>Create a Sequence Diagram</h3>

- **Description** - Online customer can search book catalog, view description of a selected book, add book to cart, and checkout
- **Draw This On Your Own**

<h3></h3>



