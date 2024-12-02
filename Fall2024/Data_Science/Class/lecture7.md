# Ranking 

- Authorities and Hubs (Kleinberg' 1998)
- A Web page is a good <u>authority</u> -> pointed to by many good hubs
- A Web page is a good <u>hub</u> -> points to many good <u>authorities</u> 
- Good hubs and authorities <u>reinforce</u> each other
- Authorities & Hubs form a bipartite sub-graph of the Web
- Rank(p) -> weight of Web page p
- $N_u$ -> outdegree of Web page u
- Edge __u__ -> v gives $Rank(u) / N_u$ to webpage v
- $B_v$ -> Web pages pointing to v
- Rank(v) on the next iteration (i+1)

$$
\forall v, Rank_{i + 1}(V) = \sum _{u \epsilon B_v}{\frac{Rank_i(u)}{N_u}}
$$
- Fixpoint algorithm
	- For N pages initialize the rank to 1/N
- Iteratively compute the Page rank equation
- Can be expressed as computing <u>eigenvectors</u> for a matrix
- Ranking Web pages by relevance to the Query
	- (page, query, rank)
- __Ranking Function__
	- Features (of a webpage)
		- Affect rank of webpage
	- <u>Static</u> features
		- precompiled
	- <u>Dynamic features</u>
		- At query time
- Algorithms
	- A big if statement
	- Machine learning algorithm
- Fixpoint algorithm
	- For N pages initialize the rank to 1/N
- Iteratively compute the Pagerank equation
- Can be expressed as computing <u>eigenvectors</u> for a matrix
- Page rank really has nothing to do with the user query. It is just the ranking of a certain webpage. 
	- Means we need features for the ranking function. This is why we have <u>Dynamic Features</u>
