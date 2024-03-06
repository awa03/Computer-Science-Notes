##### Shortcut to assignment operator

```cpp
Obj& Copy(Obj& RHS){
	if(this != &RHS){
		delete [] arr;
		clone(RHS); // traditional deep copy
	}
	return *this; 
}

// Shortcut -- Only work if move constructor is implemented
Obj& Copy(Obj& RHS){
	Vector copy = rhs;
	std::swap(*this, copy); // --- NEEDS MOVE IMPLEMENTATION --- //
	return *this;
}
```

##### Typedef Within C++`

`typedef /*type*/ objName; // Creates a alias for the specified data type`
Ensures that the type matches the intended usage, without typedef different systems / compilers may interpret the type differently (say long int, double, etc: for type int). So we use this to circumvent these challenges.



