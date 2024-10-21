# Homework 6

## 5. Sliding Puzzle

### Complexity analysis
The game can be represented as a state of 7 positions within the game board. This state is comprised of 3 black tile, 1 empty tile, and 3 white tiles. The initial state of the board being seen below. 

![[tiles_B_W.drawio.png]]

We compute the number of possible game states through taking the number of positions ($7$), and adjusting this value with the number of permutations. There are 3 white tile ($3!$) position, and 3 black tile ($3!$) position, as well as one empty position ($1! = 1$). Now we can apply these to find the number of possible game states.

$$
numGameStates= \frac{7!}{3!3!1}
$$
Now in order to find the branching factor (number of possible actions from a given state), we need to define all possible moves that can be made. Generally speaking these moves can be described as one of the following.

- Moving to an adjacent tile, in which a blank space is directly the left or right of the selected tile. There are a few possible states within these moves. We can either have 1 adjacent tile or 2-3 adjacent tiles.
- We can also hop over tiles. The cost of this move will be the number of tiles jumped. 

Through this we can determine that there are 3-4 possible moves within each game state. 

### Considering the Heuristic 
The proposed heuristic will count the white tiles on the wrong side of the black tiles. 

#### Admissibility
A heuristic is considered to be admissible if it properly estimates the cost to reach the goal state, attempting to find the shortest path. The defined heuristic focuses on moving the white tiles, in turn calculating the lower bounds of the number of moves needed. Each out of place tile will focus on moving left. Therefore we can determine this heuristic to be admissible, since it does not over state the number of moves required to solve the puzzle. It will only underestimate the number of moves, or provide the exact solution. 

#### Informness
Informness allows us to determine if one heuristic is better than another one. In this case we will compare our heuristic to BFS. We cannot say that our heuristic is more informed than a BFS, since a BFS considers all possible moves. Our heuristic will however be more performant than a BFS, since we are making informed decisions on our moves rather than exploring all possible paths. Given this information we can determine our heuristic to be fairly informed, however, it is not more informed than a BFS. 

#### Monotocity
Monotocity is a property describing if a state maybe found at a later point with a cheaper cost. Within our example we can describe our example as monotone if the estimated cost of the new state to the goal does not exceed the cost of the actual cost of the move plus the estimated cost in the previous state. Our heuristic does not violate monotocity since we will reduce the number of out of place tiles in each move, in other words we will only decrease or retain the number of needed moves. 

****

## 6. 8 Puzzle

We are given the following 3 heuristics 
- Tiles out of place
- Sum of distance out of place
- 2x the number of direct tile reversals

#### Ranking Accuracy
Given these heuristics we can determine the order of accuracy to be 


