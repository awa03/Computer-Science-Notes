A container class example is shown below
```
void add(Student s) 
```

Destructor
```
Roster::~Roster(){
	delete [] student;     // if 'delete student' then only 1 obj deleted
}
```

