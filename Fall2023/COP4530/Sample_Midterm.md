**Instructions:** Answer all questions, marking T for True or F for False in the T/F questions. Write answers clearly for short answer questions, for longer problems provide well commented code and explanations. Keep answers concise and organized.

## Recursion (10 points)

1) Write a recursive C++ function to calculate the factorial of a positive integer 'n'. Provide function definition and its base case.

```cpp
// put code here
unsigned int factorial(int n){ 
	if(n == 0 || n == 1){return 1;}
	else return n * factorial(n-1);
}
```

2) Write a recursive C++ function to compute the nth Fibonacci number. Provide the function definition and its base case.

```cpp
// put code here
int fibonacci(int n){
	if(n <= 1){
		return n; // base case
	}
	else {
	// Recursive call
		return fibonacci(n-1) + fibonacci(n-2);
	}
}
```


## Math Review (15 points)

3) True or False: Induction is a technique used to prove the correctness of algorithms or mathematical statements.
	**True**

4) Explain the concept of geometric series and provide a formula to calculate the sum of a geometric series.
	**A geometric sequence of numbers where each term after the first is found by multiplying the previous term by a fixed number. The formula is $Sum = \frac{a}{1-r}$**

1) Prove by induction that for all positive integers n, 1 + 2 + 3 + ... + n = (n * (n + 1)) / 2.

```md

```

## C++ Basic Concepts (15 points)

6) Explain the differences between 'public', 'private', and 'protected' access specifiers in C++ classes.
**Public member variables are accessible from wherever, assuming they are within the scope of declaration. Private member variables only hold scope within the class that they are declare in, these values may be returned through a getter. Protected Variables are accessible through inherited classes.**

7) Discuss different parameter passing methods in C++ (e.g., pass by value, pass by reference) and provide examples for each.
**Pass by value allows for a copy to be made of the passing value, this may be disadvantageous for passing large values or objects. A more suitable alternative may be pass by reference which allows for direct access to the object/ value to be passed.**

8) Define and explain the concept of function objects in C++.
**Function objects allow for comparison of objects. For example the operator== may allow a class to be compared for equality with another class.**


## Generic Programming

9) Write a C++ function template that swaps two values of any data type. Provide the function template definition and usage example

```cpp
// code goes here
template <typename T>
void move(T& obj1, T& obj2){
	T object = obj1;
	obj1 = obj2;
	obj2 = object;
}
```

10) Explain the concept of a class template in C++ and provide an example of a class template for a generic data structure.

**Templates allow for passed values to be of any type. This allows functions too serve multiple purposes, and utilize differing values. For example say a user wants to see if all values within an array are equal. The user may use a template to allow for types other than int or string to be used.**

```cpp
// Example Worked Out
template <typename T>
bool equal(T* array){
	int x = 0;
	for(int i=0; i < array.size() - 1; ++i){
		x = i+1;
		if(!(array[i] == array[x])){
			return false;
		}
	}
	return true;
}
```


## Algorithm Analysis

11) Define and explain the formal notations 'Big O', 'Big Omega', and 'Big Theta' used for analyzing algorithm complexity. Provide an example for each.
**Big O is the upper limit of the functions time complexity, meaning the worst case. Big Omega describes the best case, it represents the lower bounds of a function. Big theta is the average case, combining both the lower and upper bound.**

1) Analyze the time complexity of a simple sorting algorithm (e.g., bubble sort) in terms of Big O notation.


## Data Structures and Algorithms

13) Explain the circular array concept in the implementation of a deque data structure. How is the number of elements determined in a deque?
**A circular array holds both the head and the tail values. This allows for O(1) indexing of a circular queue. The number of elemnts is determined between the discrepency in space between the head and tail elements.**

14) Provide the key methods and their time complexities for a doubly-linked list and its iterator implementation.
**O(1) insertion and deletion, O(n) printing the array**

15) Describe the concept and prototype of a stack and its applications. Provide an example of an application using a stack data structure.
16) Explain the concept and prototype of a queue and its applications. Provide an example of an application using a queue data structure.


## Project Questions 

17) Write a code snippet in C++ that demonstrates the insertion operation in a circular deque. Include comments explaining the code.

```cpp
// code goes here
```

18) Write a code snippet in C++ that demonstrates the implementation of Depth-First Search (DFS) using a stack data structure. Include comments explaining the code.

```cpp
// code goes here
```

1) Explain the concept of postfix evaluation and provide an example of an expression to be evaluated using a stack-based algorithm.
