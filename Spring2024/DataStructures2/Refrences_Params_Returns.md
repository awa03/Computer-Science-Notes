### Header Files 

Template classes can not be compiled using the same method of compilation as a traditional header (.cpp) file. This is because it contains multiple classes. We use the hpp file to remedy this instead. Declare before use applies to templates.

```cpp
List<int> list1; 
List<int> list2;

// The Compiler needs to see all the code prior to use because of this.
```

Hpp files are header implementation files, because of this we include the header file at the bottom of the h file, or Vice Versa.

```cpp
// For the hpp
#include "list.h"

// ------------------ //

// For the .h file
// code goes here
#include "list.hpp"

```

We commonly have the .hpp at the bottom of the h file, so that the style is effectivly the same for the end user. We still only need to include the (.h) file for usage.

> [!NOTE]
> Judge which to use based on if you are using templates or not.

### References, Params, Returns 

L-Value - Changable, Non Temporary
R-Value - Temporary object or a value not associated with an object name

```cpp
// R-Value - 5
// L-Value - Number
int Number = 5;
```

L-Value References, are done using a single address, or pointer `&`, `*`, etc
R-Value References, are done using a double address, `&&`. 

> [!NOTE]
> Auto will deduce Const, meaning it may have advantages over declaring the type directly.

```cpp
int x, y, z; // regular var
int& r = x; // Legal
int& r2 = x+y; // Illegal, Thats an R value
int && r = x+y; // Legal, R-Value Reference
```


