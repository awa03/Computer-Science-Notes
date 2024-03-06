<h3>Why We Need To Know</h3>
We need to know which data structure to utilize within certain use cases so that we may optimize our program's functionality as well as usability. We need to know when to use these structures and how to implement them.

<h1><strong>Time Complexity Of Data Structures</strong></h1>

Operation|Vector|Linked List|Deque|Tree (Unordered)|Hashtable (Unordered)
-|-|-|-|-|-
Insert front|O(n)|O(1)|O(1)|O(log(n))|NA
Insert Back|O(1)|O(1)|O(1)|O(log(n))|NA
Insert Middle|O(n)|O(1)|O(N)|O(log(n))|O(1)*
Remove Front|O(n)|O(1)|O(1)|O(log(n))|NA
Remove back|O(1)|O(1)|O(1)|O(log(n))|NA
Remove Middle|O(n)|O(1)|O(n)|O(log(n))|O(1)*
Random Access|O(1)|O(n)|O(1)|O(log(n))|NA
Search|O(n)|O(n)|O(n)|O(log(n))|O(1)*

* star is the Average Complexity
* C++ STL ordered map and set: balanced tree
* C++ STL unordered map and set: Hash table

<h1><strong>Theory and Terminology</strong></h1>

<h3>Tree</h3>
- The tree is a connected graph with no cycles (no circles)
- Consequences:
	- Between any two vertices, there is exactly one unique path

<h3>Rooted Tree</h3>
- A rooted tree 
	- is connected
	- has no cycles
	- has exactly one vertex called the root of the tree
- Consequences
	- Can be arranged so that the root is at the top
	- parent vs. child nodes and edges
	- sibling nodes - Nodes of the same parent nodes
	- leaf nodes - Nodes without children nodes

![[rooted_tree 1 1.jpeg]]

- A unique path from the root to any vertex is a descending path
- Depth of vertex
	- Length of the unique descending path from the root to v
	- the root is at a depth 0
- The height of a vertex v is the length of the longest path from v to one of its leaves
- The height of a tree is the height of the root
	- Equal to the max depth 

![[aBbeM 1.jpg]]

<h3>Rooted Tree: Recursive Definition</h3>

- A graph with N nodes and N-1 edges
- Graph has...
	- one root r
	- Zero or more non-empty subtrees

```cpp
// Tree Node 
struct TreeNode{
	Object element;
	TreeNode *firstChild;
	TreeNode *nextSibling;
}
```

<h3>Tree Traversal</h3>

- Often defined recursively 
- Each kind corresponds to an iterator type
- Iterators are implemented non-recursively

Step|Description
-|-
1|Go to the root
2|Visit child subtrees

- Depth First Search
	- Begin at root
	- Visit vertex on arrival
- An implementation may be a recursive, stack-based, or nested loop
- For more information on depth-first search visit [[Stacks]] notes

<h3>Postorder Transversal</h3>

- The left subtree is traversed first
- Then the right subtree is traversed
- Finally, the root node of the subtree is traversed

<h3>Inorder Transversal</h3>

- The left subtree is traversed first
- Then the root node for that subtree is traversed
- Finally, the right subtree is traversed

<h3>Preorder Transversal</h3>

- The root node of the subtree is visited first.
- Then the left subtree is traversed.
- At last, the right subtree is traversed.

![[Screenshot Capture - 2023-10-04 - 16-10-55 1.png]]

<h3>Binary Tree</h3>

- Each node has at most two children, referred to as the left child and the right child.
- Every layer except maybe the bottom is fully populated with vertices. 
- All nodes at the bottom level must occupy the leftmost spots consecutively

![[bvst 1.png]]

A complete binary tree with n vertices and h height satisfies
- $2^H ≤ n < 2^{H+1}$
- $H ≤ log(n) < H + 1$
- $H = floor(log(n))$

