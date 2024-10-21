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

### Design

- Read / write with a single row key is atomic
	- Single row transactions
- Data is stored in lexicographic order
	- Improves performance
	- Horizontally partitioned (tablets)
- Version control 
	- Recently crawled pages
	- Old versions garbage collected
		- Only last n versions
		- Only values written in the last X days

### API

- Data definition language (DDL)
	- Creating / deleting tables
	- Manipulating Access control rights
- Data manipulation language (DML)
	- Writing / Deleting values
	- Looking up values with a key
	- Iterate over a subset in a table
- Bigtable can be used by MapReduce jobs

### Compacting Tables
- Keep memtables small
- Minor: flush current memTable as SSTable to GFS
- Merging:
	- Read several SSTables and a memtable
	- Flush a new merged SSTable
- Major: 
	- Merge current memTable and all SSTables 
	- Flush a new SSTable

### Optimizations
- SSTables Compression
- SSTables Caching
- One log per tablet server instead of per tablet 
- Vertical partitioning
	- Segregate column groups that are usually accessed together into separate tables

### Summary
- Big Table - large scale storage engine for structured data
- Highly available and fault tolerant
- Scales incrementally
- Consistency
	- Operations on rows are atomic
	- Tablets serve by one tablet server at a time
	