# Module 2 Test

**Aiden Allen**
**Oct 18th, 2024**

## Results Report

### Purpose

The tool is very minimal, only providing a few options. The options
are; Make USB Writeable, Make USB Read Only, About, and Exit. The tool
was created in order to block USB writes, while not explicitly to be
used in a forensic setting due to the disclaimer, it can be applied to
various forensic needs.

### Equipment

-   Thumbscrew: USB Write Blocker
-   USB Drive (for testing Thumbscrew)
-   OS: Windows 10, Running in a VM
-   Laptop (HP Pavilion)

As you can see the tools that I used were the same of the aforementioned
hypothesized tools.

### Procedure

1.  Added `Test.txt`
2.  Added `Test_Hidden.txt`
3.  Added `Test.zip`
4.  Added `Test_Hidden.zip`
5.  Added `Test.iso`
6.  Added `Test.json`
7.  Added `Test_MetaData.xml`

![[pic2.png]]

These files all successfully added since the write blocker was not
currently turned on. This helps establish a base case in order to
determine if the writes were blocked due to the Thumbscrew tool or an
issue with the flash drive, or any other write capabilities.

1.  Ran Thumbscrew as Administrator
2.  Turned On USB Write Blocking

![[pic1.png]]

3.  Testing `Test.txt` did not work due to the write blocking
4.  Testing `Test_Hidden.txt` did not work due to the write blocking
5.  Testing `Test.zip` did not work due to the write blocking
6.  Testing `Test_Hidden.zip` did not work due to the write blocking
7.  Testing `Test.iso` did not work due to the write blocking
8.  Testing `Test.json` did not work due to the write blocking
9.  Testing `Test_MetaData.xml` did not work due to the write blocking

![[pic3.png]]

![[pic4.png]]


I then attempted to add all files at once, which did not work as well.

11. I then attempted to edit `Bard.txt` which was already within my USB
    drive, which also did not work.

### Observed Results

Through my testing I observed that writing to the USB was seemingly
impossible without some sort of system intervention. I am sure I could
have made a program to bypass this through turning off write blocking,
but with a reasonable degree of certainty I can say that write
operations are sufficently blocked when using Thumbscrew.

### Conclusion

In conclusion, the Thumbscrew tool effectively performed as expected
through blocking all write operations to the USB drive. Throughout all
of the tests, using various file types and archives, the tool proved
successful. While the tool is not explicity designed for forensic use,
it can serve as a basic yet functional solution in forensic activities,
where maintaining data integrity is crucial. The lack of complex
features makes the tool easy to use, however it limits its ability to
perform in more advanced forensic applications. Nevertheless, for a
straightforward USB writeblocking tool it is extremely effective and
efficient.

### Validation Details

**Testing Performed by Aiden Allen** **Location: Florida State
University** **Date: Oct 18th, 2024**

****
