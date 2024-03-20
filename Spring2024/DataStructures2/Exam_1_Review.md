
#### Move Constructor

```cpp
IntVector::IntVector(IntVector&& v){
	max = v.max;
	size = v.size;
	arr = v.arr;

	// Return data to default -- NULL
	// So the other arr isnt holding 
	// garbage values
	v.size = v.max = 0;
	v.arr = nullpt;
}
```

#### Print Linked List In Reverse

```cpp
void PrintReverse(Node* t){
	// pass in the node and rely on 
	// the stack to print in reverse
	if(t != null){
		PrintReverse(t->next);
		cout << t->data;
	}
}
```

####
