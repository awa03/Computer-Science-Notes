
### Sample Homework Problems

Numbers 9, 11, 12 , and 14
A\\(B\\C) = (A\\B)∪(A∩C)

**Proof:** we show that x ∈ LHS <=> x ∈ RHS
x ∈ LHS <=> x ∈ A\\(B\\C)
<=> (x ∈ A) ^ ¬(x ∈ B\\C)
<=> (x ∈ A) ^ ¬(x ∈ B ^ X ∈ C)
<=> (X ∈ A \\ B)∪(X ∈ A)∩(X ∈ C)
<=> x ∈ (A\\B)∪(A ∩ C) <=> x ∈ RHS

**Proof:** We show LHS ⊂ RHS and RHS ⊂ LHS
LHS ⊂ RHS : Let x ∈ LHS = (A ∩ B)\\C. Then x ∈ A ∩ and x ∈ C. Since A ∈ A ∩ B, then X ∈ A and x ∈B. Hence X ∈ A, X ∈ B, and X ∈ X. X ∈ A\\C and X ∈ B\\C, so X ∈ (A\\C)∩(B\\C) = RHS

RHS ⊂ LHS : Let X ∈ RHS = (A\\C)∩(B\\C). Then X ∈ A\\C and x ∈ B\\C, so X ∈ A, X∉ and x ∈ B, x ∉ C. So X ∈ A and X ∈ B and X∈B ∩ B. Since also uses C, X ∈(A ∩ B)\\C = LHS. Since LHS ⊂ RHS and RHS ⊂ LHS, we conclude that LHS = RHS.

#### Proof By Drawing

![[scrnli_10_11_2023_7-42-02 PM.png]]

****

### Problem #2

(A∩B)\\C = (A\\C)∩(B\\C)
**Proof:** We show that LHS ⊂ RHS and RHS ⊂ LHS.
LHS ⊂ RHS : Let X ∈ LHS = (A∩B)\\C. Then X ∈ A∩B and X ∈ C. Since X ∈ A ∩ B, X ∈ A and X ∈ B. Hence X∈A,X∈B, and X∉C, X ∈ A\\C abd X ∈ B\C, So x∈(A\\C)∩(B\C) = RHS.

RHS ⊂ LHS: Let ∈ RHS = (A\\C)∩(B\\C). Then X∈A\\C and X∈ B\\C, so x∈A,X∉C and X∈B, X∉ C. So X∈A and X∈B and X∈A∩B. Since also X∉C, X∈(A∩B)\\C = RHS.
Since also X∉C, X∈(A∩B)\\C = RHS.







