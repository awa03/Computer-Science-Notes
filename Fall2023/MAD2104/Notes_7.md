$(p or q) xor (p and r) => (p xor) xor (p xor r)$

> What are the truth values of p, q, r that make LHS T?

$p or q$ | T
$p and r$| F

p|q|r|RHS
-|-|-|-
T|T|F|F xor T = T
T|F|F|T xor F = T
F|T|T|T xor F = T
F|T|F|T xor T = T

This logical implication is invoked by 

1) p | F
2) q | T
3) r  | F

$(p xor q) xor (q xor r) => (p or q) xor (p and r)$

> What makes LHS T?

$(p xor q) xor (q xor r)$ | T

1) $p xor q$ | T  $q xor r$ | F
2) $p xor q$ | F $q xor r$ | T

