#### BST Deletion
	
For Deleting nodes with more than one children (2+ children) 
<b>Deletion Strategy</b>: Replace the node with smallest node in the right sub-trees

```cpp
void remove(const Comparable& x, BinaryNode *& t){
	if(t == nullptr)
		// item not found
		return;
	if(x < t->element)
		remove(t, t->left)
	else if(t->element < x)
		remove(x, t->right)
	else if(t->left != nullptr && t->right != nullptr){
		// Two Children
		t->element = findMin(t->right)->element;
		remove(t->element, t->right);
	}
	else{
		BinaryNode* oldNode =t;	
		t= (t->left != nullptr) ? t->left : t->right;
		delete oldNode;
	}
}
```

[Visualization link](https://www.cs.usfca.edu/~galles/visualization/BST.html)

#### Lazy Deletion

- Dont delete!
- Just mark node as deleted
- Wastes space
- useful if deletions are rare or space is not a concern
- 1000 elements deleting 500 of them height would be ~10 down to ~9
- This means that the time complexity is roughly the same with lazy deletion
- This makes it a good alternative to normal deletion
- Avoid in *linear data* structures

#### Print Tree

```cpp
// inorder traversal -- recursive def
operator<<(os){
	if(isEmpty())
		os << "";
	else
		printTree(os);
}

void printTree(BinaryNode*t, os){
	if(t != nullptr){
		printTree(t->left);
		os << t->element << endl;
		printTree(t->right); 
	}
}
```

#### Destructor

We have to use post order traversal for a destructor so as not to cause memory leaks, as a result of loosing access to the children upon the parents deletion

```cpp
makeEmpty(t->left)
makeEmpty(t->right)
delete thisNode;
```

#### Copy Constructor

The copy constructor & assignment operator must be preorder traversal.

```cpp
// Copy Const
BST(const BST& RHS){
	root = clone(rhs.root);
}

// Helper Implementation -- Recursive
BinaryNode* clone(BinaryNode *t) const{
	if(t == nullptr)
		return;
	else 
		return new BinaryNode{
			t->element, 
			clone(t->left), 
			clone(t->right)
			};
}
```


#### Insertion and Deletion Bias

- When a tree skews due to unmanaged data
- Compromises the time complexity of the tree

****

#### AVL Tree

- a binary search tree with a balance condition
- to ensure the depth is roughly logN
- <b>Balance condition</b>
	- for _every node_ in tree height of the left and right subtree are allowed to differ by at most one. 
- <b>How to maintain</b>
	- Rotate nodes if condition violated when inserting nodes
	- assuming lazy deletion
- <b>Violations</b>
	1) An insertion into left subtree of left child of k
	2) An insertion into right subtree of left child of k
	3) An insertion into left subtree of right child of k
	4) An insertion into right subtree of right child of k
- <b>Case 1 & 4</b>
	- Single Rotation 
- <b>Case 2 & 3</b>
	- Double Rotation

There will be extra overhead with AVL trees, since you must maintain information about height at each node. Insertion becomes more expensive, but it should still evaluate to LogN. Searches will be guaranteed to be between logN and logN + 1, reducing to LogN. 

