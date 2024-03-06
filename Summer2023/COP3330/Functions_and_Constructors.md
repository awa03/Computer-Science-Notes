```
friend className function();
```

Friend functions have access to the private member data of the class they are contained within. This allows for the user to have a function separate from the class, but still interact with it.

- For operator overloads, friends may need to be used 

```
className objectName = function(param);
```

We can call the friend function with the above syntax. Notice that no dot operator is used, this is because it is not explicitly part of the object, rather a separate function.

We also do not need to use scope resolution in order to define the friend function, within the implementation file.

<h4>Conversion Constructors</h4>
- used to facilitate automatic type conversion
- conversion constructors have one parameter, and can be invoked explicitly or implicitly

```
int main(){
	Fraction f = 9;  
}
```
The definition of the conversion constructor will define what 9 means in this context

1) Conversion constructors support implicit type conversion. 
2) Getters are typically marked as const

<h4>Using Const</h4>
- will not change state of object
- can only call other const functions
- should be used for getters and display functions
- Only the constructor of a const object can change the state

<h4>Destructors</h4>
- work just like constructors, but are implicitly called when the object falls out of scope
- Destructors are commonly used to cleanup shared resources
