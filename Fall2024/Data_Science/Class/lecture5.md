### Spark

- Fast and expressive cluster computing system interoperable with MapReduce / Hadoop
- Improves performance (orders of magnitude faster) 
	- In memory computing primitives
	- General computation graphs
- Improves usability (less code)
	- API in Scala, Java, Python
	- Interactive Shell

#### Stack

- Berkeley Data Analytics Stack (BDAS)


| SPARK SQL | Spark Streaming  | GraphX | MLIB               |
| --------- | ---------------- | ------ | ------------------ |
|           | (real-time)      | graph  | (Machine Learning) |

#### Data Model

- Resilient Distributed Datasets (RDDs)
	- Distributed collections of objects that can be cached in memory across the cluster
	- Manipulated through parallel operators
	- Automatically recomputed on failure
- Program Interface
	- Functional API's in Scala, Java, Python
	- Interactive use from Scala Shell


#### Fault Tolerance

RDD's track <u>lineage</u> info to rebuild lost data. 

```java
file.map(lamba rec: (rec.type, 1))
	.reduceByKey(lambda x, y: x + y)
	.filter(lambda (type, count) : count > 100)
```


****

### Data Model

- Semi-relational (relational with a few difference)
	- Each relation has to have <u>at least one primary key</u>
	- Several primary keys should be ordered
	- Relations have to be grouped into hierarchies and partitioned
- Adoption of semi-relational data model + synchronous replication on top of Big-table led to development of spanner
- Spanner turned into a global temporal multi-version large scale semi-relational data store
- SQL-based query language

### Version Control

- Based on global timestamps
- Correspond to valid global serialization order
- T0 commits before T1 starts 
	- T0's timestamp < T1's timestamp 


### True Time API

Methods
- `TT.now()` returns TTinterval (earliest, latest)
- `TT.after(t)` - returns true if time is after case

Instantaneous error bound $\epsilon$ 
- Define $\epsilon$ = (latest - earliest) / 2
- $\epsilon$ can be set based on the worst case of clock drift
- $\epsilon$ depends on the master time uncertainty and communication delay 

****
## Google TPU

