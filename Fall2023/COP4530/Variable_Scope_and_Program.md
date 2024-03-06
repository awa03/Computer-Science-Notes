- L value - Associated with non-temporary objects
- `string str = "hello";` 
- `str` - L Value
- `"Hello"` - R Value, Temporary

```cpp
string x= findMax(a);
string & y = x;
cout << y << endl;
```

- R values can be moved (we do not need the value)
- L values can be copied

```cpp
// Refrence to an R Value
string && str2 = "Hello";
```

<h1><strong>Parameter Passing</strong></h1>

<h3>Call by Value</h3>

- Copies the value of the parameter being passed
- Called function can modify the parameter but not the initial

<h3>Pass by Reference</h3>

- Can modify the original value
- Faster because you dont need to make a copy

<h3>Pass by Reference</h3>

- Cannot modify the value
- Should be used for large values

<h3>Call by rvalue refrence</h3>

- Move rvalue instead of copy
- Normally more efficient

```cpp
vector <string> v("hello", "world");
cout << randomItem(v) << endl;  // L Value
cout << randomItem({"Hello", "World"}) << endl; // R Value
```

<h3>Given File Example</h3>

```cpp
#include <iostream>
#include <vector>
#include <string.h>

using namespace std;


double ave( const vector<int> & arr, int n, bool & errorFlag)
{

    int sum = 0;
	for( int i = 0; i < arr.size( ); ++i )
	  sum += arr[i];

	n = 100;
	errorFlag = true;
	return ((double)sum)/arr.size();
}


int main( )
{
  int nn = 5;
  bool err = false;
  
  vector<int> myArray {1, 2, 3, 4, 5};
  double average = 0.0;
  
  cout << "Before: average = " << average << ", nn = " << nn << ", err = " << err << endl;  

  average = ave(myArray, nn, err);

  cout << " After: average = " << average << ", nn = " << nn << ", err = " << err << endl;  

  return 0;
}
```


<h1><strong>Return Passing</strong></h1>

<h3>Return by Value</h3>

- makes a copy of a variable returned

<h3>Return by Reference</h3>

- Return a reference of the variable returned

<h3>Return by Const Reference </h3>

- Return the reference of the variable returned
- Return value cannot be modified by caller

<b>Lifeline extended beyond function call for by const reference and reference.</b>
****
<h1><strong>Big Five in C++</strong></h1>

- Five special functions provided in all c++ classes
	- Destructor constructor
	- Copy constructor
	- Move constructor 
	- Copy assignment operator = 
	- Move assignment operator = 

<b>A constructor is called whenever.. </b>
-  An object goes out of scope
-  Delete is called
<b>Invoked during</b>
- Declaration 
- Call by value, and return by value
- <strong>Not in</strong> Assignment operator
****
<strong>Problem with Defaults</strong>
- Usually dont work when data member is a pointer type
- If a class contains pointers as member variables and you want two copies of objects pointed at

<h1><strong>Variable Scope</strong></h1>

- If your program sometimes doesn't work. Then...
***You Have Bugs***
- a local variable only exists within its scope

****

<h1><strong>Templates</strong></h1>

- Type independent patterns
- Allows for reusable code, and generic programming
- The template declaration indicates that Comparable is the template argument it can be replaced by any type to produce a real function. 

```cpp
// Return the maximum item in the array a
template<typename Comparable>
const Comparable& findMax(const vector<Comparable>& a){
	int maxIndex = 0;
	for(int i= 1; i < a.size(); i++){
		if(a[maxIndex] < a[i]){
			maxIndex = i;
		}
	}
	return a[maxIndex];
}
```

<h3>For Example</h3>

- If a user needs to use the same function to hold a string, as well as integers.  A Code example can be seen above.
- Also covered in [[COP3330]] notes
<h3>Function Objects</h3>

- Objects whose primary purpose is to define a function
- Using operator overloading : `operator ()`
<h3>Memory Cell</h3>

- Can be used for any type object

#code #functions #pass-by-ref #assignment #l-value #r-value
#defaults #memberFunctions #memberVariables #declaration #cpp 

