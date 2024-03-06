The following would be an operator overload for a fraction class. Assuming variables numerator, denominator, etc. Hold their respective understood values.

```
friend ostream& operator(ostream& o, Fraction f){
	o << f.numerator << "/" << f.denominator;
	return o;
}
```

for input streams we would do the reverse of this operator

```
friend istream& operator(istream& o, string n){
	# the user can set the way they are assigned through this
	o >> n;
	return o;
}
```

You can redefine any extraction operator within c++. Assignment, equality, less than, greater than, etc.

ostream & istream must be friend functions because ostream is not included within our class. (within the c standard library)

