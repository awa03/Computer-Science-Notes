
Setters allow the programmer to add bounds checking to setting the member data. The member data is sensitive, so it is best practice to keep the member data mutation away from the user. 

`stoi()` - string to int 

- We encapsulate the definition of a "valid" Phone number field into a separate, private function
- Because it is private the address book application cannot call it directly, but we can call it with a setter

Default Constructors are automatically evoked when an object is created.
A parameterized constructor has parameters, and it is also used in the creation of an object in the syntax below
`className objectName(Parameter);`

```
Contact::Contact(string name, string number){
	PhoneNumber = number;
	Name = name;
	Important = false;
}
```

We may run into errors if a default constructor is called in the following way
```
className objectName();     // Because of the parentheses 
className objectName;       // Shouldnt give an error
```

A <strong>constructor</strong> is a special function member that specified defaulting logic for a class' data members.

