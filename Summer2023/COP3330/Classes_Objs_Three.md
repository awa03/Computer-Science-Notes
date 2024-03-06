- provides a template that can be used to create many instances/objects with the same behavior and the same types
- Objects are instances of a class that have potentially a different state

<strong>Encapsulation</strong> is provided by classes, which are the fundamental building block of object oriented programming.

<h2>Classes</h2>
- serve as a blueprint for an object
- A class definition provides the function of the class

<strong>Type</strong>- what class was used to create the object
<strong>Name</strong>- an identifier for the object, can be used to distinguish between one another
<strong>Member Data</strong>- The state of the object
<strong>Member Functions</strong>- The behavior of the object

DDU- <i>"Declare, Define, Use"</i>
- - Declarations specify an interface
- <strong>Define</strong>- Definitions specify implementation
- <strong>Use</strong>- Interacting with the interface to perform a function

An interface is a simplified view of a program, that allows for easier user input/output. It makes complicated tasks simpler. In other words the user should not need to understand the implementation.

We can declare member data (state) or member functions (behavior) as:
- <strong>Public</strong> - access from outside class
- <strong>Private</strong> - access from inside class (also known as "hidden")
- <strong>Protected</strong> - access from inside class, and from derived classes
The public members of a class provide the interface that the user can see.
Private member data protects the user from messing up the program, it limits there access. 

> <strong><i>Unchecked State is Bad</i></strong>

<h3>Types of Member Functions</h3>
- <strong>Accessors</strong>- functions that do not change state
- <strong>Mutators</strong>- are functions that do change

An example of the following are:
- <strong>Getters</strong>- accessors that just return the value of a private member data
- <strong>Setters</strong>- a mutator that sets member data

