# Homework 7

**Aiden Allen**

****

**1) Trace the execution of the recursive depth-first search algorithm (the second version of depth search in Section 6.1.1) on the state space of Chapter 3, Figure 14**

The goal that we are seeking to reach within the following graph is an attempt to maximize the value of the node. We will attempt to classify this through the following algorithm referenced in _6.1.1_.  

```python
function depth search(current state); // closed is global
	begin
		if current state is a goal
			then return SUCCESS;
		add current state to closed;
		while current state has unexamined children
			begin
				child := next unexamined child;
				if child not member of closed
					then if depth search(child) = SUCCESS
					then return SUCCESS
			end;
		return FAIL // search exhausted
	end
```


We will be examining the following tree in order to describe the way in which this algorithm operates, through hand traversing the tree. 


![[Screenshot 2024-11-01 at 17-04-13 05_Chapter_03.pdf - 05_Chapter_03.pdf.png]]


| Current State | Path    | Closed                       | Next Child | Outcome                                             |
| ------------- | ------- | ---------------------------- | ---------- | --------------------------------------------------- |
| A             | A/      | A                            | B          | Try Child                                           |
| B             | A/B     | A, B                         | E          | Try Child                                           |
| E             | A/B/E   | A, B, E                      | H          | Try Child                                           |
| H             | A/B/E/H | A, B, E, H                   | _NULL_     | __FAIL__                                            |
| I             | A/B/E/I | A, B, E, H, I                | _NULL_     | **FAIL**                                            |
| F             | A/B/F   | A, B, E, H, I, F             | J          | Try Child                                           |
| J             | A/B/F/J | A, B, E, H, I, F, J          | _NULL_     | **FAIL**                                            |
| C             | A/C     | A, B, E, H, I, F, J, C       | F          | Try Child                                           |
| G             | A/C/G   | A, B, E, H, I, F, J, C, G    | _NULL_     | __FAIL__                                            |
| D             | A/D     | A, B, E, H, I, F, J, C, G, D | _NULL_     | <mark style="background: #BBFABBA6;">SUCCESS</mark> |
|               |         |                              |            |                                                     |

****

**5) Using the move and path definitions for the knight’s tour of Example 6.1.1, do the following:**

- Trace the execution of pattern search (the second version) of Section 6.1.2 on the goal path(1,9). Your trace should follow the example showing the trace for the goal path(1,2).
- Discuss briefly what would happen with a trace for the goal path(1,5).
- Similarly briefly discuss what would happen with a trace for the goal path(7,6), and explain why the ordering of the entries in the move predicate can affect the behavior.

The pattern search algorithm given to us in section _6.1.2_, is shown below. 

```python 
function pattern search(current goal);
	begin
	if current goal is a member of closed // test for loops
		then return FAIL
	else add current goal to closed;
		while there remain unifying facts or rules do
		begin
			case
			current goal unifies with a fact:
				return unifying substitutions;
			current goal is negated (¬p):
				begin
				call pattern search on p;
				if pattern search returns FAIL
					then return {}; // negation is true
				else return FAIL;
		end;
		current goal is a conjunction (p ∧ . . .):
		begin
			for each conjunct do
			begin
				call pattern search on conjunct;
				if pattern search returns FAIL
					then return FAIL;
				else apply substitutions to other conjuncts;
			end;
			if pattern search did not return FAIL for any conjunct
			then return composition of unifications;
			else return FAIL;
		end;
		current goal is a disjunction (p ∨ . . .):
		begin
			for each disjunct do
			begin
				call pattern search on disjunct
				if pattern search returns SUCCESS
					then return substitutions
				else return FAIL;
			end;
			if pattern search returned FAIL for all disjuncts
				then return FAIL;
		end;
		current goal unifies with rule conclusion (p in p ← q):
		begin
			apply goal unifying substitutions to premise (q);
			call pattern search on premise;
			if pattern search returns SUCCESS
				then return composition of p and q substitutions
			else return FAIL;
			end;
		end; //end case
	end //end while
	return FAIL
end
```


_Goal_: (1, 9)
	Unify with 9 by ${1/X, 9/Y}$ 
	$move(1, Z) \land path(Z, 9) \implies path(1, 9)$

_Subgoal_: move(1, Z) 
	 Unify with fact move(1, 8), unifying with $(8 / z)$, satisfies subgoal
	 $move(8, 9)$

_Goal_ path(8, 9): 
	Unifying with the Rule:
		$move(X, Z) \land path(Z, Y) \implies path(X, Y)$
		$path(8,9)←move(8,Z)∧path(Z,9)$
	Making the new subgoal $move(8, Z)$
	
_Subgoal_: move(8, Z) 
	Using the fact move(8, 3), unify with {3, 2} satisfying this subgoal
	The new subgoal will then be $move(4, 9)$
	
_Goal_: path(4, 9)
	Unify with the rule:
		$path(X,Y)←move(X,Z)∧path(Z,Y)$ 
	by {4/X, 9/Y}, giving:
		path(4,9)←move(4,Z)∧path(Z,9)
	The new subgoal will then be $move(4, Z)$

_Subgoal_: move(4, Z)
	Using the fact move(4, 9), unify by {9/Z}, meeting the subgoal
	The new subgoal is now, (9, 9)

_Goal_: path(9, 9) 

For the goal path _path(1, 5)_ the pattern search would attempt to find a sequence from 1 to 5 by exploring possible moves from each position. Starting from 1 it would likely follow the path from $move(1, 8)$, checking path $path(8, 5)$. Eventually this path would fail to find a valid sequence reaching 5, as there are no direct or compounded moves that will go from 1 to 5. Therefore the algorithm would eventually backtrack and fail, indicating that there are in fact no valid paths. 

For _path(7, 6)_, the algorithm would move to a position such as $move(7, 3)$ or $move(7, 2)$, recursively attempting to reach the position _6_. If no cases lead to 6 it will backtrack and return. The ordering of entries in move predicate can impact this because it will prioritize closer and move relevant connections to the goal path. Poor ordering can thus lead to many irrelevant moves being made, when the algorithm may have made more effective choices otherwise. The same can be said for heuristic evaluations as well! 

****

__7) Using the rule in Example 6.1.2 as a model, write the eight move rules needed for the full 8 × 8 version of the knight’s tour.__

1) move(X, Y, X2, Y2) :- X2 is X + 2, Y2 is Y + 1, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.
2) move(X, Y, X2, Y2) :- X2 is X + 2, Y2 is Y - 1, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.
3) move(X, Y, X2, Y2) :- X2 is X + 1, Y2 is Y + 2, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.
4) move(X, Y, X2, Y2) :- X2 is X - 1, Y2 is Y + 2, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.
5) move(X, Y, X2, Y2) :- X2 is X - 2, Y2 is Y + 1, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.
6) move(X, Y, X2, Y2) :- X2 is X - 2, Y2 is Y - 1, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.
7) move(X, Y, X2, Y2) :- X2 is X + 1, Y2 is Y - 2, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.
8) move(X, Y, X2, Y2) :- X2 is X - 1, Y2 is Y - 2, X2 >= 1, X2 =< 8, Y2 >= 1, Y2 =< 8.

****

__8) Using the start and goal states of Figure 5, hand run the given production system solution
to the 8-puzzle:__

- Goal driven fashion
- Data driven fashion

__For each part, create a table like that shown in Figure 7__

![[Screenshot 2024-11-04 at 12-37-31 07_Chapter_06.pdf - 07_Chapter_06.pdf.png]]

_Production Set_: 
1) Goal State in working memory (current or goal square) -> halt
2) blank is not on the left edge   -> move the blank left
3) blank is not on the top edge    -> move the blank up
4) blank is not on the right edge  -> move the blank right
5) blank is not on the bottom edge -> move the blank down

_Control Regime_: 
1) Try each production in order
2) Do Not Allow Loops
3) Stop when the goal is found


_Data Driven_:

| Iteration | Current State          | Goal State                                       | rule #'s                                         | Fire Rule                                        |
| --------- | ---------------------- | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| 0         | 1                      | 31                                               | 2, 3, 4                                          | 2                                                |
| 1         | 2                      | 31                                               | 3, 4                                             | 3                                                |
| 2         | 3                      | 31                                               | 3, 4, 5                                          | 3                                                |
| 3         | 4                      | 31                                               | 4, 5                                             | 4                                                |
| 4         | 5                      | 31                                               | 2, 4, 5                                          | 2                                                |
| 5         | _ALREADY VISITED SKIP_ | 31                                               | 1, 4, 5                                          | 1                                                |
| 6         | 5                      | 31                                               | 2, 4, 5                                          | 2                                                |
| 7         | _ALREADY VISITED SKIP_ | 31                                               | 1, 4, 5                                          | 1                                                |
| 8         | 5                      | 31                                               | 4, 5                                             | 4                                                |
| 9         | 6                      | 31                                               | __NULL__                                         | __Back Track__                                   |
| 10        | 1                      | 31                                               | 3, 4                                             | 3                                                |
| 11        | 18                     | 31                                               | 2, 3, 4, 5                                       | 2                                                |
| 12        | 19                     | 31                                               | 3, 4, 5                                          | 3                                                |
| 13        | 20                     | 31                                               | 4, 5                                             | 4                                                |
| 14        | _ALREADY VISITED SKIP_ | 31                                               | 1                                                | 1                                                |
| 15        | 21                     | 31                                               | 2, 4, 5                                          | 2                                                |
| 16        | _ALREADY VISITED SKIP_ | 31                                               | 4, 5                                             | 4                                                |
| 17        | 22                     | 31                                               | __NULL__                                         | __Back Track__                                   |
| 18        | 23                     | 31                                               | __NULL__                                         | __Back Track__                                   |
| 19        | 24                     | 31                                               | 3, 4                                             | 3                                                |
| 20        | _ALREADY VISITED SKIP_ | 31                                               | 4                                                | 4                                                |
| 21        | 25                     | 31                                               | 2, 3, 4                                          | 2                                                |
| 22        | _ALREADY VISITED SKIP_ | 31                                               | 3, 4                                             | 3                                                |
| 23        | 26                     | 31                                               | __NULL__                                         | __Back Track__                                   |
| 24        | 27                     | 31                                               | __NULL__                                         | __Back Track__                                   |
| 25        | 18                     | 31                                               | 2, 4, 5                                          | 2                                                |
| 26        | 28                     | 31                                               | 4, 5                                             | 4                                                |
| 27        | 29                     | 31                                               | 4, 5                                             | 4                                                |
| 28        | 31                     | <mark style="background: #BBFABBA6;">GOAL</mark> | <mark style="background: #BBFABBA6;">GOAL</mark> | <mark style="background: #BBFABBA6;">GOAL</mark> |

As we can see the goal state has been reached through the search method. 

_Goal Driven_:

| Iteration | Current State          | Goal State                                       | rule #'s                                         | Fire Rule                                        |
| --------- | ---------------------- | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| 0         | 31                     | 1                                                | 2, 3, 4, 5                                       | 2                                                |
| 1         | 30                     | 1                                                | 3, 4, 5                                          | 3                                                |
| 2         | 29                     | 1                                                | 4, 5                                             | 4                                                |
| 3         | 28                     | 1                                                | 2, 4, 5                                          | 2                                                |
| 4         | _ALREADY VISITED SKIP_ | 1                                                | 4, 5                                             | 4                                                |
| 5         | 18                     | 1                                                | 5                                                | 5                                                |
| 6         | 1                      | <mark style="background: #BBFABBA6;">GOAL</mark> | <mark style="background: #BBFABBA6;">GOAL</mark> | <mark style="background: #BBFABBA6;">GOAL</mark> |

****

__9) Consider the financial advisor problem discussed in Chapters 2, 3, and 4.__

- Write the problem explicitly as a production system.
- Generate the state space and stages of working memory for the data-driven solution to the example in Chapter 3. Create a table like that shown in Figure 7.


_Production Set_:
- Goal State in working memory (current or goal square) -> halt
- min_savings := dependents * (amount_per) + base_min_savings
- Savings Amount >= min_savings : Investment(stocks)
- Savings Amount < min_savings : Investment(savings)
- Min Savings less -> Backtrack

_Control Regime_:
- Try each valid selection
- Stop when the goal is found

****

__10) Repeat problem 9.b to produce a goal-driven solution.__

