
<h1><strong>Binary Trees</strong></h1>

- A  binary tree is a rooted tree with no vertex
- has more than two children
	- left and right child nodes

```cpp
// Syntax
struct BinaryNode{
	Object element;    // The Data in the node
	BinaryNode *left;  // & of Left Child
	BinaryNode *right; // & of Right Child
}
```

- A binary tree is complete iff every layer except possibly the bottom is fully populated with vertices. All nodes at the bottom level must occupy the leftmost spots consecutively.
- A complete binary tree with $n$ vertices and $h$ height satisfies
	- $\color{lightblue}2^H ≤ n < 2^{H+1}$
	- $\color{lightblue}2^2 ≤ 7 < 2^{2+1}, 2^2 ≤ 4 < 2^{2+1}$
	- $\color{lightblue}2^H ≤ n < 2^{H+1}$
	- $\color{lightblue}H ≤ log(n) < H + 1$
	- $\color{lightblue}H = floor(log(n))$
- <strong>Proof:</strong>
	- At level $k ≤ H-1$, there are $2^K$ vertices
	- At level $k = H$, there is at least 1 node, and at most $2^H$ vertices 
	- Total number of vertices when all levels are fully populated (maximum level k)
		- $\color{lightblue}n = 2^0 + 2^1 + ... + 2^k$
		- $\color{lightblue}n = 1 + 2^1 + 2^2 + ... 2^k$ (Geometric Progression)
		- $\color{lightblue}{n = \frac{1(2^{k+1} - 1)}{2-1}}$
		- $\color{lightblue}{n = 2^{k+1}-1}$

<h4>Case 1:</h4>

A tree has the maximum number of nodes when all levels are fully populated
- Let $\color{lightblue}{k = H}$
	- $\color{lightblue}{n = 2^{H+1} - 1}$
	- $\color{lightblue} n < 2^{H+1}$


<h4>Case 2:</h4>

The tree has a minimum number of nodes when there is only one node in the bottom level
- Let $\color{lightblue} k = H -1$
	- $\color{lightblue}n' = 2^H - 1$
	- $\color{lightblue} n ≥ n' + 1 = 2^H$

<h4>Combining two conditions we have</h4>

- $\color{lightblue} 2^H ≤ n ≤ 2^{H+1}$

****

<h1><strong>Representation of Complete Binary Tree</strong></h1>

- All trees can be represented by the generic representation shown in the code above
- Due to the structure of a complete binary tree, it cannot be represented by a vector
	- As long as one can figure out the parent/child relationship
	- Parent/child relationship embedded in the index of parent and child
	- Vector elements carry data
- <strong>Tree Structure : Vector</strong>
	- Vector indices carry tree structure
	- Index order = levelorder
	- The tree structure is implicit
	- Uses integer arithmetic for tree navigation
	- No need to explicitly store the tree node pointers
- <strong>Tree Navigation : Vector</strong>
	- The root at `v[0]`
	- Parent of `v[k] = k[(k-1)/2]`
	- Left child of `v[k] = v[2*k + 1]`
	- Right child of `v[k] = v[2*k]+1`

****

<h1><strong>Binary Tree Traversal</strong></h1>

<h3>Inorder traversal</h3>

- Definition
	- Left child
	- Vertex
	- Right Child (recursive)
- Algorithm
	- Depth-first search (visit between children)

<h3>Other Traversals that apply to binary case</h3>

- Preorder
	- [[Trees 🌲]] 
- Postorder
	- [[Trees 🌲]]
- Level order traversal

> A tree can be rebuilt from its inorder and preorder (or postorder) traversal results

****

<h1><strong>Rebuild Tree from Traversal</strong></h1>

- Let each node be associated with a letter, traversals print the letters when visiting a node. The results are:
	- Preorder: "ABDEC"
	- Postorder: "DEBCA"
	- Inorder: "DBEAC"

![[Screenshot Capture - 2023-10-09 - 13-02-59.png]]

<h3>Rebuild tree from preorder + inorder traversal</h3>

- Find the root from the preorder result: A
- Decide left and right subtrees
	- Find the letter for the root in the inorder string and decide the inorder string for the two subtrees
- Decide the preorder string for left and right subtrees
	- Inorder for the traversal string length should be equal to another string length, extract preorder strings from the whole preorder string
- Recursively do this to the sub-trees

****

<h1><strong>Build Expression Tree from Postfix Expression</strong></h1>

```cpp
stack<T> s;
while(s != /*end of postfix expression*/){
	// Get the next token
	if(token == /* operand */){
		// Create a new node with the operand
		s.push(/* New Node */);
	}
	if(token == /* operator */){
		s.pop(); // corresponding operands from S
		// Create a new node with the operator (and corresponding operands as left/right children)
		s.push(/* New Node */);
	}
} // s.top is the final binary expression 
```

<h3>Rebuilding with a tree</h3>

- Postorder string: FECAHJIGB
- Inorder string: CFEABHGJI

**Root**: B
- Last in the post-order string
**Left Subtree**: CFEA
- Before root (B) in the inorder string
**Right Subtree**: HGJI
- After root (B) in the inorder string

