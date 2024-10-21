# Heuristic Search

George Polya defines heuristics as the study of the methods and rules of discovery and invention. Within a *State Space Search*, **heuristics** are formalized rules for choosing a branch in a state space search that is most likely to lead to an acceptable solution. 

**Some reasons AI may employ heuristics:**
- A problem may not have an exact solution due to inherent ambiguities.
- There maybe an exact solution but the computational cost of finding the solution is prohibitive. Take for example Chess.

A heuristic is only an informed guess of the next step to be taken in solving a problem, because of this problem they are not always able to predict the exact solution. This may lead to a sub optimal solution, or a failed solution being found. However since most of the time every move cannot be explored it is often the best, and only solution. 

Given a tik tak toe board we can see that there are 9 possible inital moves. With each time a move is completed the number of possibilities decreases by 1. This means we have $9!$ possible states. However since the board is symmetrical we can reduce this number to $12 \times 7!$ If we apply a simple heuristic to this example, In cases of X having an equal numbers of potential wins we take the first found state. Then select and move to the state which X has the most winning opportunities. In this case X takes the center of the grid. After this first move the opponent can chose either of 2 alternative moves. Whichever move is taken the heuristic can be applied to the new state of the game.As search continues, each move evaluates the children of a single node; exhaustive search is not required.  States are marked with their heuristic values. Although not an exact calculation of search size for this “most wins” strategy for tic-tac-toe, a crude upper bound can be computed by assuming a maximum of five moves in a game with five options per move. In reality, the number of states is smaller, as the board fills and reduces options. This crude bound of 25 states is an improvement of four orders of magnitude over 9!. 
- Corner X (First Move): 3 possible wins
- Center X (First Move): 4 possible wins
- Middle X (First Move): 2 possible wins

### Hill Climbing



