
# Building Control Algorithms for State Space Search 

Breadth first search and best first search are essentially the same algorithm, by retaining global a closed list and through implementing a open list as a *queue* or *priority queue*. (A DFS would use a stack).

- *priority queue* : **Best First Search**
- *queue* : **Breadth First Search** 
- *stack* : **Depth First Search** 

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

The above algorithm generates the child states one at a time and explores their children states one at a time before generating the sibling state. If the goal state is reached than this is a good path to take. This will allow for __ignoring__ sibling nodes. This also (_through recursion_) allows us to skip the need for a open list, since the series of path states is recorded through activation records of recursive calls. 

Essentially meaning because the current recursive path will be returning from bottom up we have a path that we can track to the state rather than needing to explicitly log that current path. 

Backtracking will be effected when all of the descendants fail to include the goal, meaning that the recursive call for the current state will fail. This will invalidate whatever recursive call began the current child investigation. The recursive nature will thus also limit our scope to the evaluation nodes rather than all of the children. 

__State Space Search__ is inherently a _recursive process_. 

****
### Pattern Driven Reasoning 

If an algorithm treats implications as possible rules for the query then they will simply be refereed to as _rules_. After unifying the goal with the conclusion of the implication (or _rule_) and applying the resulting substitutions throughout the rule, the rule premise becomes a new goal known as the _sub-goal_. If a sub-goal matches a fact in the knowledge base, search terminates. Given a goal (such as $P(a)$) we can use unification to discover implications who's conclusions match the goal. 

Given the example in `6.1.2` we can see an example of an implementation of a pattern driven search. Where the current focus of the search is denoted by the _current_goal_. The major advantage to using unification and modus ponnes to generate states is that the resulting algorithm may search any state space where the specifics of the problem can be described using predicate calculus. 

To reason with predicate calculus we need something called a _control regime_. This way we can avoid meaningless paths, and loops within our traversal. Logic is _declarative_, and without a search strategy will it defines a state of possible inferences but it doesn't tell us how to make useful decisions. A control pattern such as _pattern_search_ must try alternating matches in some sequential order. A simple way to define this order would be to try rules and facts in the order in which they appear within the knowledge base. 

### Examples of a Production System

We can define the production set, and control regime, for the 8 puzzle problem as follows: 

__Production Set__:
1) Goal State in working memory (current or goal square) -> halt
2) blank is not on the left edge   -> move the blank left
3) blank is not on the top edge    -> move the blank up
4) blank is not on the right edge  -> move the blank right
5) blank is not on the bottom edge -> move the blank down

__Control Regime__: 
1) Try each production in order
2) Do Not Allow Loops
3) Stop when the goal is found

 