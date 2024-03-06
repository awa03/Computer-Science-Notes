<strong>Input</strong> : requirements specification 
<strong>Output </strong>: architecture and design documents

<strong>Arcitecture</strong> - Big picture
- Architectural patterns
	- Subsystems
	- Their interaction principals
- The allocation of modules into subsystems

<h1><strong>Plan Based Development</strong></h1>

Step|Name
-|-
1|Requirements
2|Arcitecture
3|Design
4|Implementation

> Agile is the same process (Object Oriented Design)

<h1><strong>Software Architecture</strong></h1>

- The critical link between design and requirements engineering, as it identifies the main structural components in a system and the relationship between them
- The architectural view of a system is useful for communication within the team

<h3>Box and Line Diagrams</h3>

- criticized because they lack semantics and do not show the types of relationships between entities nor the visible properties of entities
- Depends on the use of architectural models. The requirements depend on how they are used.

<h3>What's included in Architecture</h3>

- Major subsystems and modules
- Interfaces and communication protocols
- Database and data structures 
- Security mechanisms
- Fault Tolerance

<h3>Designing Subsystems / Modules</h3>

- May be broken up into smaller systems
- Easier to implement a number of smaller subsystems
- If the subsystems are independent they can be implemented by programming teams working in parallel 
- It does not make sense to break up small systems
- Every module should have a single responsibility

<h3>Loose coupling principle</h3>

- Keep the connection between parts
- <strong>Cohesion</strong> - The degree to which the elements of a module belong together (related code should be close to each other)
- <strong>Coupling</strong> - The degree to which the different modules depend on each other  (modules should be independent as much as possible)


<h3>Minimum Complexity Principle</h3>

- The simple solution over the clever solution
- Easier to understand, test, maintain, replace
- Similar to the <strong>Principle of Least Knowledge</strong> - One should not know about the internal details of other modules
- <strong>Dont Repeat Yourself</strong> - Do not duplicate functionality
- <strong>Kiss (Keep it simple stupid)</strong> - make it simple only focus on what's needed

<h3>Layered Architecture</h3>

- Providing clean separation between layers is sometimes difficult and a high-level layer may need to interact with a layer below it. Performance may suffer because of this

<h3>MVC</h3> 

- Model View Controller
- The model manages the system data and associated operations on that data
- The view defines and manages how the data is presented to the user
- The controller manages user interaction and passes these interactions to the View and the Model

Type|Example
-|-
Controller|HTTP request processing application, data validation
View|Dynamic Page Generation, forms management
Model|Business logic Database

- The pattern is commonly used where there are multiple ways to view and interact with data
- Also used when the future requirements for interaction and presentation of the data are unknown
- Can involve additional code and code complexity when the data model and interactions are simple

<h3>Model View View Model</h3>

- The model manages the system data and associated operations on that data
- The view defines and manages how the data is displayed and reacted to the user
- View model sits between these two providing binding behavior