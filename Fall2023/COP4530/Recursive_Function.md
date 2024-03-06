<h3>Basic Rules for a recursive function</h3>
1) Base Case: must always have a base case in order to make a recursive call
2) Must stop at some point

<h3>Examples</h3>

Fibonacci

$$
fib_n=fib_{n-1}+fib_{n-2}
$$

```cpp
int sum(A,n)   // finds the sum of n elements

// Recursive Example
int sum(A,n){
	if(n==0) return 0;
	return sum(A, n-1) + A[n-1];
}
```

#cpp #code #recursion #functions 