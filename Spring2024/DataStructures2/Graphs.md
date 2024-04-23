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

****

## Single Source Shortest Path


