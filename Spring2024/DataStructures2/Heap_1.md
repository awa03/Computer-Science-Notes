## Priority Queue

- Insert - adds a new element
- deleteMin - delete minimum element in priority queue

#### Applications of Priority Queues

- Operating systems : shortest job first process scheduling
- Simulators : Scheduling the next event (Smallest event time)

#### Implementation

- Linked Lists - O(N) worst case on insert or deleteMin()
- Binary Search Trees - O(LogN) average time complexity on insert and delete 
- Overkill 0 all elements are sorted
- Heaps - O(logN) worst case for both insertion and delete operations
	- Does not guarantee that the order is still first in first out

#### Partially ordered Trees

- Partially ordered tree (POT) is a tree such that:
- There is an order relation <= defined for the vertices of T
- For any vertex p and any child c of p, p <= c
- However, the smallest element in POT is the root. No conclusion can be drawn about the order of the children. 

## Binary Heaps

- A binary heap is a partially ordered complete binary tree
- The tree is completely filled on all levels except possibly the lowest
- In a more general d-Heap
	- A parent node can have d children
- We simply refer to binary heaps as heaps

##### Vector Representation

- Parent of v[k] = v[k/2]
- Left Child of v[k] = v[2 * k]
- Right child of v[k] = v[2 * k + 1]

