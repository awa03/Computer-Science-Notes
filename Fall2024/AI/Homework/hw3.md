# Homework 3
**Aiden Allen**

****
### Exercise 6 

-  Attempt to unify the following pairs of expressions. Either show their most general unifies or explain why they will not unify
- p(X,Y) and p(a,Z) 

In order to determine if $p(X, Y)$ and $p(a,Z)$ can be unified we need to find substitutions for $X, Y$. We can substitute $X \implies a$ and $Y \implies Z$.  This will leave us with the initial expression: 

$$
p({X / a, Y / Z})
$$

- p(X,X) and p(a,b)

We can determine if $p(X, X)$ and $p(a, b)$ are able to be unified through substitution. $X \implies a$ will be our first substitution, and $X \implies b$ will be our second. In $p(X, X)$ we can observe that our arguments are both $X$. Therefore we can conclude that if $a$ and $b$ are not the same $p(X, X)$ and $p(a, b)$ cannot be unified. However if $a$ is equal to $b$ then the unified expression would be:

$$
p(X/a)
$$

- ancestor(X,Y) and ancestor(bill,father(bill))

In order to determine if $ancestor(X, Y)$ and $ancestor(bill, father(bill))$ are able to be unified we must first look at the rules of unification. Our textbook states, 

<blockquote> 
<i>Unification is complicated by the fact that a variable may
be replaced by any term, including other variables and function expressions of arbitrary complexity.
These expressions may themselves contain variables.</i>
</blockquote>

This means that we may use other functions within out unification process. We can substitute our terms in order to view the unification. We will substitute $X \implies bill$ and $Y \implies father(bill)$. 

$$
ancestor({X / bill}, Y / father(bill))
$$

- ancestor(X,father(X)) and ancestor(david,george)

Just as we proved in the previous example substitution is allowed amongst variables and functions. However, we must also ensure that the value of george matched the value of the father of bill in order to allow for unification. We can then again substitute $X \implies david$ and $father(X) \implies george$ in order to resolve our attempt at unification. 

$$
ancestor({X / david, father(x) / george})
$$


- q(X) and ¬q(a)

From $q(X)$ we can obtain the predicate variable $X$, and from $¬ q(a)$ we can obtain $a$.  In order to unify $¬q(a)$ with $q(X)$ we need to ensure q is the same within both expressions, however q is negated within $¬q(a)$. Therefore we can determine that $q(X)$ and $¬q(a)$ cannot be unified because $q(X)$ asserts that $q$ holds true for some $X$, and $¬q(a)$ asserts that $q$ does **not** hold true for some $a$. Since one expression asserts q is true and the other asserts that q is false they cannot be unified. Thus we can not conclude that there is a unifier. 

****
### Exercise 7

- Compose the substitution sets {a/X, Y/Z} and {X/W, b/Y}.

The first step in composing the substitution sets $a/X, Y/Z$ and $X/W, b/Y$ is substituting the first set into the second set. To accomplish this we need to replace $X$ with $a$ and $Z$ with $Y$. In other words we will first replace $X$ with $a$, and $Z$ with $Y$. Therefore through substituting $X$ in the second set we are left with $X/W, b/Y$ and:

$$
a/W, b/Y
$$

Now we must substitute $Y$ from the first set into the second set. $Z$ is replaced by $Y$. However since $Z$ is replaced by $Y$ we need to replace $Y$ with $Z$. Our final step in our composition will be to to substitute the values accordingly in the second substitution set. Thus our composed substitution set will be:

$$
{a/W, b/Z}
$$



- Construct an example to show that composition is not commutative.

To construct an example of a composition that is not commutative we can use the aforementioned example. 

1. ${X/ a, Y/b}$
2. $a/Z, b/W$

Now we can compose the first set into the second set. We will first substitute $a$ for $X$ and $b$ for $Y$. 

$$
{{X/Z, b/W}}
$$
$$
X/Z, Y/W
$$

The next step will be to compose the second set into the first set. To accomplish this we must substitute $a$ for $X$ and $b$ for $Y$. 

$$
X/a, b/W
$$
$$
X/a, Y/W
$$

Thus composition of the second set into the first set will yield $X/a, Y/W$. As we can see the first composition and the second composition do not match. This proves that composition is not commutative.  

$$
X/Z, Y/W \not= {X/a, Y/W}
$$

****

### Exercise 10

- Jane Doe has four dependents, a steady income of 30,000, and 15,000 in her savings account. Add the appropriate predicates describing her situation to the general investment advisor of the example in Section 2.4 and perform the unifications and inferences needed to determine her suggested investment

The first step that we need to complete is defining the predicates used in the problem. We can identify some key words and use these for our predicate statements. Some keywords we may define are $income$, $dependents$, $savings$, and $InvestmentAdvice$. 

- **Income**: $income(JaneDoe, 30000)$ 
- **Dependents**: $dependents(JaneDoe, 4)$
- **Savings**: $savings(JaneDoe, 15000)$ 
- **Investment Advice**: $InvestmentAdvice(JaneDoe, advice)$

The next step will be to add these predicates to the general investment advisor and perform the appropriate unification's. First lets define the general investment advisor, then apply these rules to understand her problem.

-  Individuals with an inadequate savings account should always make increasing the amount saved their first priority, regardless of their income.
- Individuals with an adequate savings account and an adequate income should consider a riskier but potentially more profitable investment in the stock market.
- Individuals with a lower income who already have an adequate savings account may want to consider splitting their surplus income between savings and stocks, to increase the cushion in savings while attempting to increase their income through stocks.

These rules come with the following restraints, in order to classify them:

-  At least 5,000 in savings for each dependent
-  adequate income must be a steady income and supply at least 15,000 per year plus an additional 4,000 for each dependent


We will now define the predicates for these in order to unify them. As well as express their definitions. 

- **Savings**: $SavingsAccount(adequate)$, $SavingsAccount(inadequate)$
- **Income**: $income(adequate)$, $income(inadequate)$


Now formally defining these we are left with:

- $SavingsAccount(adequate) \iff savings \geq 5000 \times D$
- $income(adequate) \iff income \geq 1500 + (4000 \times D)$


Given these implications we can determine Jane's savings account status through substituting variables.

$$
SavingsAccount() \iff 15000 \geq 5000 \times 4
$$
$$
SavingsAccount() \iff 15000 \geq 20000
$$
$$
SavingsAcoount(inadequate)
$$

As we can see Jane Doe's savings account is inadequate. We can now perform substitution on her income to see if that is adequate.

$$
income() \iff 30000 \geq 15000 + (4000 \times 4)
$$
$$
income() \iff 30000 \geq 15000 + (16000)
$$
$$
income() \iff 30000 \geq 31000
$$
$$
income(inadaquate)
$$

We can now see that her income is adequate since $30000 \geq 31000$. Now lets view what advice this implication will leave us with. 

- $savings account(inadequate) \implies investment(savings)$

Therefore her investment advice will be to keep saving. 

****
### Exercise 11

- Write a set of logical predicates that will perform simple automobile diagnostics (e.g., if the engine won’t turn over and the lights won’t come on, then the battery is bad). Don’t try to be too elaborate, but cover the cases of bad battery, out of gas, bad spark plugs, and bad starter motor.

Let us begin through defining our predicates. Our predicates will need to consist of a few important components to an automobile. So lets define our keywords. Some important components for diagnostics maybe $BatteryStatus$, $GasStatus$, $SparkplugStatus$, $MotorStatus$, $EngineStatus$, and $LightsStatus$. We can define these as follows:

- **Battery Status**
	- $BatteryGood$
	- $BatteryBad$
- **Gas Status**
	- $GasGood$
	- $GasBad$
- **Spark Plug Status**
	- $SparkplugGood$
	- $SparkplugBad$
- **Motor Status**
	- $MotorGood$
	- $MotorBad$
- **Engine Status**
	- $EngineGood$
	- $EngineBad$
- **Lights Status** 
	- $LightsOn$
	- $LightsOff$

Now lets define some logical rules for our diagnostic. We can do this by combining our predicates in order to form a more complex diagnostic.

- $EngineBad \land LightsOff \implies BatteryBad$ 
- $EngineBad \land GasGood \implies MotorBad$ 
- $EngineGood \land LightsOn \implies SparkplugBad$ 
- $LightsOn \land EngineBad \implies BatteryGood \land MotorBad$
- $GasBad \implies EngineBad$

Now we have formed our diagnostic predicates. 