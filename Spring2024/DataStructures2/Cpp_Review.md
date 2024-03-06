
```cpp
// if we are init a that is variable per obj const within a class we should assign it as following - seperate decleration with comma's

private:
	const int start_time;

public:
	timer::timer(int time_started) : start_time(time_started)
	{
		// implementation 
	}

	// after c++11 this is also acceptable 
	timer::timer(int time_started) : start_time{time_started} 
	{
		// implementation 
	}

	// watch out for decleration of {} if the function has an initalizer list, it may chose the wrong function
```

