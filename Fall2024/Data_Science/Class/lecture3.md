# Web Search & Linear Regression

Web documents are just text documents, therefore we can always retrieve some data from this. 

For indexing we need to convert web pages into an index in order to match like terms that maybe relevant. Applying this to a search will further optimize its performance. Consider a graph $P$ if we want to search the graph for the term $P_x$ we can traverse from $P_1 ...$ following the matching path until $P_x$ is located. We will invert the index in order to find the most common term.

We must handle collections of documents not just one. 

****
### Index

- Must handle multiple documents
	- Split index into two parts (files : main memory, and hash table)
- Must minimize disk seeks & read (because they're slow)
- Lexicon
	- Hash table on disk (one read)
	- Main memory 
	- List of terms with links to these terms
	- The more we can fit in main memory the faster 
	- Order by matches for better searching
- Occurrence List
	- Simple Data Structure
	- On Disk (maybe fit on memory, but often not)
- Distributed File System

The issue with using a hash table is it may just end up becoming a linear search. 


****

### Machine Learning 