# Homework 4

**Aiden Allen**

****
### 5. “Hand run” the backtrack algorithm on the graph in Figure 3.29. Begin from state A. Keep track of the successive values of NSL, SL, CS, etc.





****
<div style="page-break-after: always;"></div>

### 6.  Implement a backtrack algorithm in a programming language of your choice

```go
package main

import (
	"fmt"
)

func isPar(c byte) bool {
	return c == '(' || c == ')'
}

func isValidStr(s string) bool {
	count := 0
	for i := 0; i < len(s); i++ {
		if s[i] == '(' {
			count++
		}
		if s[i] == ')' {
			count--
		}
		if count < 0 {
			return false
		}
	}
	return count == 0
}

func removeInvalidPar(s string) string {
	if len(s) == 0 {
		return "-1"
	}

	set := map[string]struct{}{}
	queue := make([]string, 0)
	queue = append(queue, s)
	found := false
	var result string

	for len(queue) != 0 {
		str := queue[0]
		queue = queue[1:]

		if isValidStr(str) {
			found = true
			result = str
			break
		}

		if !found {
			for i := 0; i < len(str); i++ {
				if isPar(str[i]) {
					newStr := str[:i] + str[i+1:]
					if _, exists := set[newStr]; !exists {
						queue = append(queue, newStr)
						set[newStr] = struct{}{}
					}
				}
			}
		}
	}

	if found {
		return result
	}
	return "-1"
}

func main() {
	str := "()((())"
	newStr := removeInvalidPar(str)

	fmt.Println("Old string:", str)
	fmt.Println("New string:", newStr)
}
```

The above code is an example of a backtracking algorithm within go. This algorithm attempts to traverse a string of parentheses, correcting the extraneous parentheses. 

The code is a **Goal Driven** algorithm because it explores each potential string by removing one parentheses at a time in order to reach a valid string. Once the goal is met the algorithm stops. Additionally, It uses a **BFS** in order to accomplish this. This can be characterized by the usage of a queue. This will also guarantee us that it will use the shortest path in order to optimally remove parentheses.

****

<div style="page-break-after: always;"></div>


### 7 & 8. Determine whether goal-driven or data-driven search would be preferable for solving each of the following problems. Justify your answer.  As chose DFS or BFS for each example.

- Diagnosing mechanical problems in an automobile.

**Data Driven**. We would use a data driven approach because we will usually be provided a set of symptoms that need to be mapped with possible causes. We need to collect data and work through these possible causes. This means that the process should be data driven because we will start with some set of available data and trace that back to a cause.

**Breadth First Search**. We would use a BFS in order to solve this problem because car issues are normally understood by their symptoms, "my car wont start", "my ac isnt working", "my car is making a weird noise", etc. We can map some of these common conditions to common issues, we will move from these more general issues to more complex ones. Within a BFS every issue within the same level is traversed, this works very similarly to our diagnostic process since we are moving from these symptoms and common causes to possible more complex causes until our issue has been located.

- You have met a person who claims to be your distant cousin, with a common ancestor named John Doe. You would like to verify her claim.

**Goal Driven**. We would opt to use a goal driven search approach because we already know our goal, and we need to work backwards in order to find a common ancestor between John Doe and I. 

**Depth First Search**. Since we already know our goal (John Doe being the common ancestor), we need to explore a single lineage deeply at a time rather than all possibilities at the same time. This will also be a more efficient solution, due to us not traversing unneeded family branches. 

- Another person claims to be your distant cousin. He does not know the common ancestor’s name but knows that it was no more than eight generations back. You would like to either find this ancestor or determine that she did not exist.

**Data Driven**. This approach would be best handled through a data driven approach, this is because we dont have a specific goal in mind. In the aforementioned Goal Driven example we had both the start and end goal, the ancestor and our common link. In this problem however we do not know our ancestor and we are attempting to locate then. This means that we need to start with our available data and trace back to find a common ancestor, making it data driven.

**Breadth First Search**. Since we do not know who our common ancestor is we need to search every possible path. We are also provided with the information that the common ancestor is more than 8 generations back, which further enforces the fact that a BFS is the most fitting algorithm to use to solve this problem.

- A theorem prover for plane geometry.

**Goal Driven**. Within theorem proving we start with a hypothesis or goal in mind that we would like to prove. In order to prove this we must again work backwards in order to prove our theorem, in order to reach a conclusion. Therefore a goal driven search should be utilized.

**Depth First Search**. Since theorem proving involves following one path of reasoning we can conclude that a Depth First Search is the most fitting algorithm to employ. We can utilize backtracking when our proof fails in order to find the path to our solution.

- A program for examining sonar readings and interpreting them, such as telling a large submarine from a small submarine from a whale from a school of fish.

**Data Driven.** Our sonar program would need to identify which items are fish or other animals and differentiate them from submarines, because of this we can assume the best method of approaching this problem to be a data driven search. This is because we must analyze the data that we are being provided through our sonar, and make inferences based on certain features and patterns. 

**Breadth First Search**. Since we need to explore every possibility in order to identify a detected object a BFS algorithm is the most appropriate for this problem. For example if a whale is detected we would need to check its features against that of a submarine in order to identify if it should be reported. We need to ensure that this is not a submarine and to do so we must explore every level of depth evenly.

-  An expert system that will help a human classify plants by species, genus, etc.

**Data Driven.** Similarly to the aforementioned example of the sonar machine, we need to analyze available plant data and map this information to a classification. Since we have observational data, and need to extrapolate from this in order to make a conclusion, we can assume the best method to use to be a data driven approach.

**Breadth First Search**. Since a plant classification is hierarchical we must check the broad categories before narrowing down in order to identify the plant. This operates in a similar manner to the previous car diagnostic problem, where we need to explore all possible classifications ensuring that we start from broad features and narrow these down systematically. 

****

<div style="page-break-after: always;"></div>


### 10. Trace the goal-driven good-dog problem of Example 3.3.4 in a data-driven fashion 

- Fred is a collie: $collie(fred)$

Now we have to options, fred being a collie or not a collie. These can be expressed as $[collie(fred), \lnot collie(fred)]$

- Sam is Freds Master: $master(fred, sam)$

We will add the conditions of fred being sams master.  These conditions can be expressed as $[master(fred, sam), \lnot master(fred, sam)]$

- The day is Saturday: $day(saturday)$

The conditions added will then be $[day(saturday), \lnot saturday]$

- It is cold on Saturday: $\lnot warm(saturday)$

The added conditions will be $[warm(saturday), \lnot warm(saturday)]$

- Fred is trained: $trained(fred)$

The conditions added will be $[trained(fred), \lnot trained(fred)]$

- Spaniels are good dogs so are trained collies: $\forall X(spaniel(X) \lor (collie(X) \land trained(X)) \implies gooddog(X))$

Because we are compounding our functions we can say see that two possible conditions are possible for each of the statements, `true` or `false`. In other words we can find if $\lnot gooddog(X)$ through having the new conditions, an untrained collie or not a spaniel.  

- If a dog is a good dog and has a master then he will be with this master: $\forall X \forall Y \forall Z(gooddog(X) \land master(X, Y) \land location(Y,Z)) \implies location(X,Z)$

- If it is Saturday and it is warm, then Sam is at the park: $day(saturday) \land warm(saturday) \implies location(sam, park)$

This means that we will be able to see if it is a warm an Saturday through the location node.

- If it is saturday and not warm, then Sam is at the museum: $day(saturday \land \lnot warm(saturday)) \implies location(sam, museum)$

We can now express these relationships in terms of a graph. 

![[graph1.drawio.png]]

Say we want to find out if where Sam and his master is, we will start with determining what day it is. 

![[graph2.drawio.png]]

Lets say that it is a warm Saturday. We can see through the graph that Sam will be in the Museum. 

![[graph3.drawio.png]]

From Here lets examine if the dog has a master. 
![[graph4.drawio.png]]

As we can see Freds master is Sam.

![[graph5.drawio.png]]

In order to determine if Fred is now a good dog we need to see if he is either a trained Collie or a Spaniel. 

![[graph6.drawio.png]]

Then we may determine if Fred is with his master. In order to do this we must check if he is a good boy, which we have verified above, as well as his masters location. 

![[graph7.drawio.png]]

As we can wee fred is in fact with his master.