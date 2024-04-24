## Introduction

A graph contains both <b>Verticies</b> (Nodes) and <b>Edges</b> (links). A <b>Complete Graph</b> ( n (n-1) / 2 Max Edges)  ensures that there is a connection between every pair of vertices. There are two types of graphs: Directed (Digraph) and undirected. 

### Directed Graph
Directed graphs consist of edges that contain ordered pairs, which means {u, v} may have an absent {v, u}. Directed Graphs are drawn such that nodes are vertices and edges are arrows.
- Connection is directional

### Undirected Graph
Undirected graphs consist of edges that contain two elements, each edge {u, v} is the same as {v, u}.
- Connection is bidirectional

****

## Terminology

**Adjacency** - vertex v is adjacent to u if and only if (u, v) is an edge 
- Can refer to both undirected and directed graphs
- In a directed graph, vertex 'v' is adjacent to vertex 'u' if there is a directed edge from 'u' to 'v' (i.e., (u, v) is an edge). 
- In an undirected graph, vertex 'v' is adjacent to vertex 'u' if there is an edge between them (i.e., {u, v} or {v, u} is an edge).

**Weight** - refers to the cost of a parameter associated with each edge
- Can refer to both undirected and directed graphs
- In a directed graph, the presence of a directed edge from vertex 'u' to vertex 'v' (i.e., (u, v) is an edge) can be associated with a weight indicating some measure or cost associated with traversing from 'u' to 'v'.
- In an undirected graph, the presence of an edge between vertices 'u' and 'v' (i.e., {u, v} or {v, u} is an edge) can also be associated with a weight representing some property or measure related to the connection between 'u' and 'v'.

**Path** - A sequence of vertices w1,w2,…,wn, where there is an edge for each pair of consecutive vertices
- Can refer to both undirected and directed graphs

**Length Of Path** - Number of edges along the path
- Can refer to both undirected and directed graphs
- Length of path is n - 1

**Cost Of Path** - Cost of all weights in the path

**Connected** - for each pair of vertices u, v, there is a path that starts at u and ends at v
- A digraph H that satisfies the above condition is strongly connected 
- If H is not strongly connected but the graph is then H is said to be weakly connected

****

## Cycle

- A path is simple if... it consists of unique vertices (with the first and last being possible exceptions). 
- A cycle is simple if the path is simple!

****

### Popular Use Cases

- Adjacency List
- Adjacency Matrix

### Adjacency List

- Each node maintains a list of neighbors (adjacent nodes)
- Takes O(|V|+|E|) space

### Adjacency Matrix

- O(N^2) Space
- A[u]{v} is true if there is an edge from u to v
-  False otherwise
-  For a weighted graph, assign weight instead of true/false
- Wasteful if the graph is sparse (not many edges)

****

## Topological Sorting

- an ordering the vertices of G such that if there is an edge from vi to vj, then vj appears after vi
- there must be a vertex with no incoming edges
- Have each vertex maintain its indegree
	- Indegree of v = number of edges (u, v)
- Repeat
	- Find a vertex of current indegree 0, 
	- assign it a rank, 
	- reduce the indegrees of the vertices in its adjacency list

```cpp
void topsort(){
	for( int counter = 0; counter < NUM_VERTICES; counter++){
		Vertex v = findNewVertexOfIndegreeZero();	
		if( v == NOT_A_VERTEX ){
			throw CycleFoundException();	
		}
		v.topNum = counter;
		for each Vertex w adjacent to v
			w.indegree--;    // O(|V|^2)
	}
}
```

A better Algorithm separating nodes with indegree 0 would be. This algorithm uses a queue to maintain nodes. O(|E| + |V|) time complexity. 

```cpp
void topsort(){
	Queue<Vertex> q;
	int counter = 0;
	q.makeEmpty();
	for each Vertex v
		if(v.indegree == 0)
			q.enqueue( v );
	while(!q.empty()){
		Vertex v = q.dequeue();
		v.topNum = ++counter;  // Assign next number	

		for each Vertex w adjacent to v
			if( --w.indegree == 0)
				q.enqueue( w );
	}
	if( counter != NUM_VERTICES) 
		throw CycleFoundException();
}
```

****

## Single Source Shortest Path

Given a graph (g), and a distinguished vertex (s), find the shortest path from s to every other vertex in G. For **Unweighted** shortest path we use BFS, for weighted shortest paths we use Dijkstra's algorithm (Assuming no negative edges in the graph). 

```cpp
// dist - distance
void UnweightedShortestPath(Vertex s){
	for each Vertex v{
		v.dist = INFINITY;	
		v.known = false;
	}
	s.dist = 0;
	for( int currDist = 0; currDist < NUM_VERTICES; currDist++){
		for each Vertex v {
			if( !v.known && v.dis == currDist){
				v.known = true;	
				for each Vertex w adjacent to v
					if(w.dist == INFINITY){
						w.dist = currDist + 1;	
						w.path = v;
					}
			}	
		}	
	}
}
```

****

# Non Course Notes 

From Abdul Bari youtube channel. 

### Terminology Use In Graphs
A **graph** is defined as G = (v, e), where v is a set of vertices and e is a set of edges. If an edge loops onto itself then it is known as a **self loop**. If two edges are repeated across vertices (a points to b, b points to a), this is known as a **Parallel Edge**.

The number of edges connecting upon a vertex: coming in - **indegree**, coming out - **outdegree**. If there are two vertices connected by an edge these are known as adjacent vertices. 

If a graph contains more than one component than it is said to be **non connected**. If we were to connect these components then it would become a **connected** graph. If a part of the graph will not become a separate component when an edge is removed than it is a **bi-connected components**.

If there is a path that returns to the original node than this is known as a **cycle**, starts at one vertex ends at the same vertex. 

If graph traversal only moves in the forward direction, this is known as **topological ordering**.   

![Graph Image](Assets/GraphExample_2.drawio.png)

If from every vertex their is a path than it is known as **strongly connected**. 

### DFS & BFS

For BFS we visit every adjacent vertex then repeat this cycle. So we could say the only order that is important in storing them is the vertex's should come before their adjacent vertices.  The Traversal of the below graph would then be: A, B, C, F, D, E

For DFS we explore the vertex's neighbors individually. This means that if we have the following graph, that the traversal would be as follows:  A, C, F, D, E, B

![Graph Image](Assets/GraphExample_1.drawio.png)


If applying this to a tree, a breadth first search may be represented as a level order traversal. Similarly, a depth first search may be represented as a preorder traversal. 

For BFS we will utilize a queue data structure. We can select any vertex to begin. Once we have completely explored the neighboring vertexes we can say that it has been completely explored. We will then continue this pattern, ensuring that the each node has not already been explored in order to avoid cycling. We will accomplish this by removing elements from the queue and checking them against our visited nodes. This will convert our graph into a **BFS spanning tree**. 

For a DFS we will use the stack data structure. We will visit one of the first nodes neighbors (it doesn't matter the order of implementation the result will be the same). Then when their are no other vertex's to move to we pop the stack (effectively going to the previous element), and visit its neighbors. If we have a visited node present within the stack it will be skipped. This will also reorder the graph into a "tree like structure". We will draw dotted lines to signify these cycles (**Back edges**). 



