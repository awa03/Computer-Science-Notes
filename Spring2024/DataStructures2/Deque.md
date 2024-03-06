
Deques are double ended queues. Deque allows for insertion from both ends of the list, doubling the size of the array with each grow. 

****
#### Time Complexity

| Function | Time |
| ---- | ---- |
| pop; front/back | O(1) |
| push; front/back | O(1) |
| Grow | O(N) -- Worst Case, for insert / del |
****
#### Implementing Deque

```cpp
// push front implementation
push_front(){
	if(needGrow(size+1)){
		Grow();
	}
	begin = (begin - 1 + content_size) % content_size;
	content[begin] = Tval
}
// Pop Front implementation
pop_front(){
	if(begin == end) {return;}
	begin = (begin +1) % content_size
}
// For Pop_Back --- begin = (end - 1) % content_size
front(){
	return content[begin]
}
```

****
#### Grow Visualized

![[Deque.drawio(1).png]]

****
#### Dump V Display

Display will print the "valid" array elements. The dump is more useful for testing purposes. This allows to see all elements within the array. Dump will print the "Raw Array", with non assigned spaces.

****

#### Copy Constructor and Move

They are essentially the same as the vector. Ensure you null the values of the other side.

****

#### Deque Iterators

```cpp
// .. IO For Deque .. // 
DequeIterator();
DequeIterator(const Deque<T> Q)
T& operator*() const; // return ref to current val
T& operator[](size_t i) const; // return ref to index
operator++(); // Increment
operator--(); // Decrement
// etc normal Constructors, also may add things like valid, next, etc
// The vals
protected:
	const Deque<T>* Qptr
	size_t index;
```

****

#### Deque Indexing

```cpp
// 1 - True, 0 - False
int DequeIterator<T>::Valid() const{
	if(Qptr == nullprt) {return 0;}
	if(index >= Qptr->size) {return 0;}
	return 1;
}

// no error checking
operator++(){
	index++;
	return *this;
}
// and vice versa for decrementing
```

If we are moving forward in the raw array we need to add to the index location. This is because the offset is equal to the index. This means we can advance one space in the array by incrementing the arrays location by one. This is the reason why we dont use bracket operators with linked lists. Linked lists do not have random access, since they are not held in continuous memory. 

Iterators support random access and many features that cannot be implemented without it. Some examples being
- a(b)
- a + 1
- a - 1

On the other hand linked lists are bidirectional iterators. These word from the current node allowing comparison with any, however not jumping multiple spaced, since its not random access.

****

#### Resources

| Name | Link |
| ---- | ---- |
| Deque Review | https://www.youtube.com/watch?v=5VDQxLAlfu0 |
| Deque Implementation (B Heap) | https://www.youtube.com/watch?v=9q3Iypvtgl4 |
| Deque Visualization | https://visualgo.net/en/list |
