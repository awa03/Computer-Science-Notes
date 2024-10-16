# Map / Reduce

### Google File System
- Nodes fail very frequently 
- Files are very big (usually GB - TBs)
- Modified by append
- Linear read / write performance outweighs latency

### Interface for GFS
- Supports most file-system operations
	- Create, read, write, close, open, delete
- Record append
	- Multiple clients appending to the same files
	- The first is the atomic


### GFS Architecture

- Needs to read the index that corresponds to a query
- Files we store on different junctures we call *chunks* 

### Google BigTable
- Distributed large scale storage engine
- holds structured data
- scaled up to thousands of nodes
- stores hundreds of terabytes of data
- Bulk load
- Real-time performance
