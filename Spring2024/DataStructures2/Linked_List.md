
#### Diagram

![[LINKED.drawio 1.png]]

****

#### Iterators

The iterators should be able to index past the bounds of the "list", for this reason we will be using dummy nodes. This will also assist us in the use of "reverse_iterator". 

> [!NOTE]
> Move constructors are always O(1)

If you build a c++ class with the iterator class implementations (in c++ style), you can use the auto loop. We can also do sequenttial search using...

```cpp
for(auto I = Cities.Begin(); I != Cities.End(); ++i){
	(I == "Tampa")? return true : pass; 
}
```

****
#### Basic Function Time Complexity

`Linked_List::Insert_Front(T& VAL); // O(1)`
`Linked_List::Insert_Back(T& VAL); // O(1)`
`Linked_List::Linked_List(T& VAL); // O(n) -- copy`
`Object& front; // O(1) show the front data item`
`Object& back; // O(1) show the back data item`
`~Linked_List; // O(n)`
`Linked_List::Clear; // O(n)`

****








