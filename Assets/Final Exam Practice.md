Binary search trees: definition, and implementation: insert, remove, 
contains, findMin, findMax

```cpp
// insert 
void insert(Node* addNode){
	// if the tree is empty
	if(root == nullptr){
		root = addNode;
	}
	insertHelper(addNode);
	
}
void insertHelper(Node* addNode, Node*& curr){
	if(curr == nullptr){
		curr = addNode;
	}
	// add is less than curr
	if(addNode->data < curr->data){
		// goto left hand node
		insertHelper(addNode, curr->left);
	}
	// add is greater than curr
	else if(addNode->data > curr->data){
		// goto right hand node
		insertHelper(addNode, curr->right)
	}
	else {
		delete addNode; // if repeat node
	}
}
```

```cpp
Node* removeHelper(Node* root, int key) {
        if (root == nullptr) {
            return root; // Node not found
        }

        // If the key to be deleted is smaller than the root's key, then it lies in the left subtree
        if (key < root->data) {
            root->left = removeHelper(root->left, key);
        }
        // If the key to be deleted is greater than the root's key, then it lies in the right subtree
        else if (key > root->data) {
            root->right = removeHelper(root->right, key);
        }
        // If the key to be deleted is the same as the root's key, then this is the node to be deleted
        else {
            // Node with only one child or no child
            if (root->left == nullptr) {
                Node* temp = root->right;
                delete root;
                return temp;
            } else if (root->right == nullptr) {
                Node* temp = root->left;
                delete root;
                return temp;
            }

            // Node with two children: Get the inorder successor (smallest in the right subtree)
            Node* temp = findMin(root->right);

            // Copy the inorder successor's data to this node
            root->data = temp->data;

            // Delete the inorder successor
            root->right = removeHelper(root->right, temp->data);
        }
        return root;
    }
```

```cpp
bool contains(Node* containsNode){
	if(root == contains){
		return true;
	}
	else{
		return containsHelper(root, c);
	}
}
bool containsHelper(Node* c, Node* curr){
	if(c == nullptr){
		return false;
	}
	if(c == curr){
		return true;
	}
	else if(c->data > curr->data){
		return containsHelper(c, curr);
	}
	else if(c->data < curr->data){
		return containsHelper(c, curr)
	}
	return false;
}
```

```cpp
// find min/max
T min(){
	if(root != nullptr){
		findMaxFromNode(root);
	}
	else {
		return -1;
	}
}
T max(){
	if(root != nullptr){
		findMaxFromNode(root);
	}
	else {
		return -1;
	}
}

T findMinFromNode(Node* c){
	if(c->left != nullptr){
		return findMinFromNode(c);
	}
	else return c->data
}
T findMaxFromNode(Node* c){
	if(c->left != nullptr){
		return findMaxFromNode(c);
	} 
	else return c->data
}
```

```cpp
// AVL Tree
bool insert(Node* insertNode){
	if(root == nullptr){
		root = insertNode;
	}
}
bool insertHelper(Node* insertNode, Node* &curr){
	// check if the position is nullptr
	if(curr == nullptr){
		curr = newNode;
		return true;
	} else {
		// RR: > 1
		// LR: < -1 
		// LRR: > 1
		// RLR < -1

		// less than condition
		if(curr->data < insertNode->data){
			insertHelper(insertNode, curr->left);
		}
		// greater than condition
		else if(curr->data > insertNode->data){
			insertHelper(insertNode, curr->right);
		}
		// equal condition
		else {
			delete newNode;
			return false;
		}

		// balancing
		curr->height = std::max(getHeight(curr->left), getHeight(curr->right));
		int bal = 1 + getHeight(curr->left) - getHeight(curr->right);

		if(balance > 1 && newNode->data < curr->left->data){
			curr = RightRotate(curr);
		}
		else if(balance < -1 && newNode->data > curr->right->data){
			curr = LeftRotate(curr);
		}
		else if(balance > 1 && newNode->data > curr->left->data){
			curr = LeftRightRotate(curr);
		}
		else if(balance > -1 && newNode->data < curr->left->data){
			curr = RightLeftRotate(curr);
		}
		
		
	}
}
LeftRotate(Node* a){
	Node* b = a->right;
	a->right = b->left;
	b->left =a;

	// update heights
	a->height = 1+ max(getHeight(a->right), a->left);
	b->height = 1+ max(getHeight(b->right), b->left);
}
RightRotate(Node* a){
	Node* b = a->left;
	a->right = b->left;
	b->left = a;

	// update heights
	a->height = 1+ max(getHeight(a->right), a->left);
	b->height = 1+ max(getHeight(b->right), b->left);
}
LeftRightRotate(Node* a){
	a->right = LeftRotate(a);
	return RightRotate(a);
}
RightLeftRotate(Node* a){
	a->left = RightLeftRotate(a);
	return LeftRotate(a);
}
```

