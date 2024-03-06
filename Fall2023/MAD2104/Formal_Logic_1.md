
<h1><strong>Truth Table</strong></h1>

p|q|r|p ∧ q| q ⊕ r|(p ∧ q)∨ r| (q ⊕ r) ∧ p|P
-|-|-|-|-|-|-|-
T|T|T|T|F|T|F|F|F
T|T|F|T|T|T|T|T
T|F|T|F|T|T|T|T|T
T|F|F|F|F|F|F|T
F|T|F|F|T|F|F|T
F|F|T|F|T|F|F|F
F|F|F|F|F|F|F|T
									               LHS of P            RHS of P
									               
LHS|RHS|LHS->RHS
-|-|-
T|T|T
T|F|F
F|T|T
F|F|T

>The premise is true ∧ the conclusion is false -- if then is false

<h3>Logical Analysis</h3>
The only time P: LHS  -> RHS is false (F) is when LHS ∧ RHS are <strong>F</strong>
Logically analyze the problem ∧ see what is needed based on the above statement. 

<h3>Logical Equivelence</h3>

P = ¬(LHS) ∨ (RHS)
= [¬(p ∧ q) ∧ (¬ r)] ∨ [((q ∧ (¬ r)) ∨ (¬ q ∧ r)) ∨ p]
= [(¬ p) ∨ (¬ q) ∧ (¬ r)] ∨ [(q ∧ (¬ r) ∧ p) ∨ (¬ q ∧ r) ∧ p]
= [¬ p ∧ ¬ r] ∨ [¬ q ∧ ¬ r] ∨ [q ∧ ¬ r ∧ p] ∨ [¬ q ∧ r ∧ p]

>This leads to the same result as the above table, similar to algebra f∨ f∨mal logic

Compound propositions P ∧ Q are described in terms of atomic propositions p, q, r, ... are logically equivalent. This is written as

$P ≡ Q (∨ P <==> Q)$

if P ∧ Q has identical truth values this means...
- Every assignment that makes P = <strong>F</strong> makes Q = <strong>F</strong>
- Every assignment that makes P = <strong>T</strong> makes Q = <strong>T</strong>

<h3>Definition</h3>
A proposition R is a tautology if it is always T, i.e., no matter the truth values of the atomic proposition R is <strong>T</strong>
- p ∨ ¬ p
- (p ∧ q) -> p
- p -> p ∨ q


