A tree is a connected graph with no cycles. Between any two vertices, there is exactly one path.  

<b>Rooted Tree</b>: is a graph G such that:
- G is connected
- G has no cycles
- G has exactly one vertex called the root of the tree
<b> Sibiling Nodes</b>
- Nodes of the same parent nodes
 <b>Leaf Nodes</b>
- Nodes without children

_Path_ from node $n_1$ to $n_k$
- Decending path
- Length of path is the number of edges
_Depth_ of vertex
- Length of unique descending path from root to v
- The root is at depth 0
_Height_ of vertex v
- v is the length of the longest path from v to one of its descendant leaves

****

### Rooted Tree Recursively

- A graph with N nodes and N-1 edges
- Graph has
	- one root r
	- Zero or more non-empty subtrees, each of whose root is connected to r by an edge
- Use a stack for recursive tree algorithms

****

### Tree Traversal

- A traversal is the process for visiting all of the vertices of a tree
- Often uses recursion
- Each kind corresponds to an iterator type
- Iterators are implemented non-recursively
	- Preorder
	- Postorder
	- Levelorder

#### Preorder

1) Visit Vertex
2) Visit Child Vertices
(Recursive)

==DFS should be used==
##### Traversal Example
```cpp
void listAll (int depth = 0) const{
	printName(depth);
	if(isDir()){
	for each file c in this directory (for each child)
		c.listAll(depth + 1);
}
```

#### Postorder Traversal

1)  Visit child vertices
2) Then visit vertex 
(Recursive)

==DFS should be used==
#### Traversal Example
```cpp
int totalSize = sizeOfFile)(;)
if(isDir()){
	for each file c in this directory (for each child)
		totalSize += c.size();
	return totalSize;
}
```


#### Level Order Traversal

1) Visit all vertices in level
2) Starting with level one and increasing 
(Use a queue, not recursive)

==BFS should be used==


#### Inorder Traversal

1) Left Child
2) Vertex
3) Right Child
(Recursive)

==DFS should be used==

****

### Binary Trees 

A _binary tree_ is a rooted tree in which no vertex has more than two children, left and right child nodes

```cpp
struct Node {
	Obj element;
	Node* left;
	Node* right;
}
```

_Complete Binary Tree_: A binary tree is complete iff every layer except possibly the bottom is fully populated with vertices. In addition, all nodes at the bottom level must occupy the leftmost spots consecutively.

<b>Satisfies</b>
- $2^H ≤ n < 2^{H+1}$
- $2^2 ≤ 7 ≤ 2^{2+2}, 2^2 ≤ 4 < 2^{2+1}$

#### Why is this this important

This ==significantly reduces== the _search algorithms time complexity_. Rather than needing to search a descending path in ==N==, it will be in ==Log (N)==. Since the tree is balanced to a degree. We know the height. For instance if we had a billion nodes stored within a tree, if complete there would only be a depth of ~31, if it is not then the depth could lead to a _stack overflow_, due to recursive calls overloading the stack, possible 1 billion nodes called!

****

#### Vector Representation

```cpp
/* parent      */     v[k] = v[(k-1)/2]
/* left child  */     v[k] = v[2*k + 1]
/* right child */     v[k] = v[2*k + 2]
```

A vector is much easier to store, and we can use random access! It is a convenient way, but it necessitates the tree to be complete.