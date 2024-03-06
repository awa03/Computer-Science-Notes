<u><i>contact.h</i></u>- This is the header file, which specifies the interface for the class

<u><i>contact.cpp</i></u>- This is the implementation file in which the details for the member functions are specified

<u><i>contact-driver</i></u>- Implements the files within the interface.

<strong>Seperation allows:</strong>
- Multiple people to work on a project with reduced chances of stepping on one another
- A external developer to have access to the header file but NOT the source file
- With a solid interface, you can change the interface without breaking any code that is using your class

One of the main goals of object oriented design is encapsulation, which at the root means grouping code together. 

<strong>Know more about the compile stage. This information can be found here </strong>[[Program Translation]]

- You can technically still compile in cone command if the #include statements are linear
- One command compilation combines the two compilation steps.

`g++ contact.cpp contact-drive.cpp -o addressbook.exe`

1) First use the `-c` flag to perform only the compilation step and build the object files
2) Link them together to create an executable
3) Open the executable with `./fileName.exe`


