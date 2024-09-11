# Formal Logic

A formal logic system consists of:
1. a **language**, the elements of which are called expressions, propositions, statements, and formulas
2. a subset language, the elements of which are taken to serve as *axioms*
3. *inference rules* which say how given certain expressions of the language 

**Theorems** consist of all expressions that can be derived from the axioms and repeated applications of inference rules. It is customary to associate a formal logic system with *semantics*, which prescribe meaning for the expressions of the language, together with a means for determining if these are true or false.

- *Soundness* (Consistency): If an expression is a theorem, then it is true
- *Adequacy* (Completeness): If an expression is true then it is a theorem

Soundness/Consistency means that one cannot prove things are not true, and adequacy / completeness means that the axioms and rules are sufficient to prove everything true.

An inference rule is said to be valid in a given semantics if it only allows one to derive true conclusions from true premises. 

![[equation.png]]

If a formal system is sound and complete with respect to its semantics, then an inference rule will be formally valid if and only if it is semantically valid. 

A proposition using the form '∨', is called a *disjunction*, and the P and Q are called *disjuncts*. A proposition using the for '∧' is called a *conjunction*, and P and Q are called *conjunction*. In the premise shown above P is the **premise**, or the **antecedent**. Q is the **conclusion** or **consequent**.

A proposition P is a *tautology* if *v*(P) = T for all truth value assignments of *v*. 


