<h3>O(N) Time Complexity</h3>

- Copy Constructor
- Copy assignment
- Destructor
- Clear()
- Erase(SI, EI )

<h3>O(1)</h3>

- Default constructor
- Move constructor 
- Move assignment operator=
- push_front(t), push_back(t), insert(I, t) 
- pop_front(), pop_back(), erase(I)
- begin(), end();
- front(), back();
- empty();

<h3>Read Only</h3>

```cpp
// Read Only
bool operator== (const iterator & rhs) const;

bool operator!= (const iterator & rhs) const;

Object & operator* ( ) const; 
// return a reference to the current value

```

<h3>Write Only</h3>

```cpp
// Write only
iterator & operator++ ( ); // prefix

iterator operator++ ( int ); // postfix

iterator& operator-- ( ); // prefix

iterator operator-- ( int ); // postfix

```

<h3>List Implementation</h3>

- A doubly linked list with header and tail nodes as markers
- [[Fall2023/COP4530/Linked Lists]]

<h3> Constructors and big-five</h3>

- Copy/move constructor
- Copy/move assignment operator
- Destructor

```cpp
// Constructors
List();

List(const List &rhs);

List(List &&rhs);  

List & operator=(const List &rhs);

List & operator=(List && rhs);

~List();

// Read-only accessor functions
int size() const;
bool empty() const;

```

