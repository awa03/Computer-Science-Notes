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