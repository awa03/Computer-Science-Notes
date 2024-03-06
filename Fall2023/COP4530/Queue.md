<h1><strong>Queue ADT - FIFO</strong></h1>

- Elements of some proper type of T
- Operations
	- Feature: First In, First Out
	- void push(T t)
	- void pop()
	- T front()
	- bool empty()
	- unsigned int size()
	- Constructors and destructors

Operation Number|Command|Stack
-|-|-
1|Q.push(Ant)|Ant
2|Q.push(Bee)|Bee
3|Q.push(Cat)|Cat
4|Q.push(Dog)|Dog

>What if we were to do Q.pop()?

Operation Number|Command|Stack
-|-|-
1|Q.push(Bee)|Bee
2|Q.push(Cat)|Cat
3|Q.push(Dog)|Dog

<h3>Stack Uses</h3>

- Buffers
- Breadth first search
- Simulations
- Producer-Consumer Problems

<h1><strong>Breadth first search Expanded</strong></h1>

- Used to find the shortest path to the start to the goal
- Starting from Node start
- Visit all neighbors of the node
- Stop 
	- if the neighbor is the goal
- Otherwise 
	- Visit neighbors two hops away
- Repeat until visiting all neighbors

<h3>Breadth First Visualized</h3>

![[020820_0543_BreadthFirs1.webp]]