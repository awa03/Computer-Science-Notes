<h2><strong>Tar File</strong></h2>

- To tar a directory:
	- `tar cvf file_name.tar directory_name/`
	- `c`: create a tar file
	- `v`: show progress
	- `f`: specify the name of the file
	- `tf`: view the contents of a tar
	- `tar xvf file_name.tar` will untar a file

<h2><strong>Make File</strong></h2>

```bash
CXX=g++
	hello_make:
		$(CXX) fileName.cpp -o fileName.x
```

<h2><strong>Reading Char</strong></h2>

```cpp
char c;
while ((c = std::cin.get()) != EOF) {
	std::cout << c; 
}
```

<h2><strong>Reading Lines</strong></h2>

```cpp
string line;
ifstream myfile("file.txt");
if (myfile.is_open()){
	while(geline(myfile, line)){
		cout << line << "\n" << endl;
	}
	myfile.close();
}
else { cout << "File could not be opened" << endl; }
``` 

<h2><strong></strong></h2>
