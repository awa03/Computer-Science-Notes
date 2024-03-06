P logically implies Q is written as P ⇒ Q, which means any of the following

1) Every assignment of truth values to the atomic proposition p, q, r that makes P <strong>T</strong> also makes Q <strong>T</strong>
2) P → Q is always <strong>T</strong>, regardless of the truth values assigned to the atomic propositions
3) P → Q is a <u>tautology</u>
4) From a truth table

p|q|r|.....|P|Q|P→Q
-|-|-|-|-|-|-
T|T|T| |F|T|T
T|T|F| |T|T|T
T|F|T| |F|F|T
T|F|F| |F|F|T
F|T|T| |F|F|T
F|T|F| |T|T|T
F|F|F| |T|T|T

P is <u>logically equivalent</u> to Q written P ≡ Q ∨ P <=⇒ Q
means P ⇒ Q ∧ Q ⇒ P
1) Every assignment of truth values on atomic proposition p, q, r, ... makes both P ∧ Q <strong>T</strong> ∨ <strong>F</strong>
2) P <-→ Q is a tautology
3) P & Q Truth table is identical

<h3>De Margon's Law</h3>
1) LHS = ¬(p ∧ q) ≡ (¬ p) ∨ (¬ q) = RHS

p|q|¬ p|¬ q|p ∧ q|¬(p ∧ q)|(¬ p) ∨ (¬ q)|LHS <→ RHS
-|-|-|-|-|-|-|-
T|T|F|F|T|F|F|T
T|F|F|T|F|T|T|T
F|T|T|T|F|T|T|T
F|F|T|T|F|T|T|T
																	Columns Are Identical

2) ¬ (p ∨ q) ≡ (¬ p) ∧ (¬ q)
<blockquote><strong><u>"Direct Proof of LHS ⇒ RHS"</u></strong></blockquote>
Assume LHS: ¬(p ∨ q) is <strong>T</strong> then p ∨ q is <strong>F</strong>, meaning both p is <strong>F</strong> ∧ so is q. Then both ¬ q is <strong>T</strong> ∧ ¬ p <strong>T</strong>. Theref∨e, ¬ p ∧ ¬ q is <strong>T</strong>. Hence RHS is <strong>T</strong>. 

>So, LHS ⇒ RHS

<h3>Distributive Laws</h3>

$p ∧ (q ∨ r) ≡ (p ∧ q) ∨ (p ∧ r)$
$p ∨ (q ∧ r) ≡ (p ∨ q) ∧ (p ∨ r)$

<b>Algebraically:</b>
$a·(b+c) = ab + ac$
$a + (b·c) != (a+b)(a+c)$

<b>Direct Proof:</b>
$p ∧ (¬ q ∨ r) ⇒ (p ∧ q) ∨ (p ∧ r)$
- Assume LHS is <strong>T</strong>
- Therefore both p is <strong>T</strong> ∧ q ∨ r is <strong>T</strong> 
- Then either q is <strong>T</strong> ∨ r is <strong>T</strong>
- In case (1), p ∧ q is <strong>T</strong> which means (p ∧ q) ∨ (p ∧ r) is <strong>T</strong> so RHS is <strong>T</strong>
- In case (2), p ∧ r is <strong>T</strong> which means (p ∧ r) is <strong>T</strong> so RHS is <strong>T</strong>

>So, LHS ⇒ RHS


