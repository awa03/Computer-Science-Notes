# Structures and Strategies for State Space Search

Well formed [predicate calculus](Ch2.md) provides a means of describing objects and relations in a problem domain, and inference rules such as modus ponnes allow us to gain insight into new knowledge derived form these propositions. These *inference rules* provide us with a space that is searched to find a problems solution. We need to ask ourselves some questions before we may implement these search algorithms. 

- Is there a guaranteed solution
- Is an infinite loop possible
- What is the time complexity of the search process
- What is the memory usage
- How can an interpreter be designed to most effectively utilize a representational language

**State Space Search** is the main answer to answering these questions. A **state space graph** maybe used to represent this problem. **Graph theory** can be used to analyze the structure and complexity of the problem. Within a state space model the nodes represent discrete states in problem solving, some examples of this maybe logical inferences or different configurations of a game board. The arcs (lines connecting nodes) then represent transitions between states. These transitions correspond to logical inferences, analogous to legal moves of a game. The act of applying rules is represented as an arc between states. 

- Arc - applying a rule between states, legal moves
- Node - logical inferences, different game states

Euler created graph theory in order to prove that it was impossible to walk around the city that crosses each bridge exactly ones. The structure is left implicit but it can be understood as such below. 

- connect(x, y, z)

An **even degree** has an even number of arcs joining it to neighboring nodes
An **odd degree** nod has has an odd number of arcs. The exception being the start and end nodes, the desired walk would have to leave each node exactly as often as it entered it. Nodes of an odd degree can be used only as the beginning or end of the walk. Unless the graph contains zero or two nodes of an odd degree the walk was impossible. The walk is not possible for graphs containing any other number of node of an odd degree. 

### Graph Theory

A **graph** consists of a set of nodes and a set of **arcs** where an *arc* is a pair of nodes. We dont need the set of nodes to be finite. A **labeled graph** has one or more labels (*descriptors*), the purpose of these is to differentiate between that node and any other node in a graph. So for Eulers example a descriptor maybe the name of the bridge. The arcs of a graph may also be labeled, these are used to indicate the relationship (as a semantic network), or to attach weights. A weight maybe something such as the bridge length. 

A graph is **directed** if the arcs are represented as ordered pairs of nodes. These directions are indicated by arrows. If $(N_1, N_2)$ and $(N_2, N_1)$ are arcs then their relationship is said to be *bidirectional*. However, if the arcs are represented as unordered pairs then it is said to be *undirected*. A graph may only be considered *undirected* if all of the arcs are *undirected*. 

A *path* through a graph connects a sequence of nodes through successive arcs. A **rooted** graph has a unique node called the root such that there is a path from the root to every node within the graph. 

