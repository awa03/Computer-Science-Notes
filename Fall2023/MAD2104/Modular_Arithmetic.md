
## Modular Arithmetic w/o Proofs

Fix a positive integer _n_, We are going to divide a _system of numbers_ called <b>modular numbers</b> that can be added and multiplied according to precise rule. There are n number of these labeled as...

$$
\bar{0}, \bar{1}, \bar{2}, ... , \bar{n}-2, \bar{n} -1
$$

The collection of these numbers is denoted as $Z / N$ and, when given the addition and multiplicative operations, is known as _the ring of integers modulo n_. 

$$
Z/N=({\bar{O}, \bar{1}, .., \bar{n}-1}), + ,x
$$

<b>Example</b>: n = 4 $Z/4 = [\bar{0}, \bar{1}, \bar{2}, \bar{3}], + x$

| +   | 0   | 1   | 2   | 3   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 1   | 2   | 3   |
| 1   | 1   | 2   | 3   | 0   |
| 2   | 2   | 3   | 0   | 1   |
| 3   | 3   | 0   | 1   | 2   |

The multiplication table would then be...

| x   | 0   | 1   | 2   | 3   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 1   | 2   | 3   |
| 2   | 0   | 2   | 0   | 2   |
| 3   | 0   | 3   | 2   | 1   |

##### Things to notice

1) 0 bar is the additive identity: 0 + a = a
2) 0 * a = 0
3) 1 bar is the multiplicative identity: 1 * a = a
4) 3 bar has a multiplicative inverse, an element that gives 1 bar upon multiplication. 
5) 2 bar does not have a multiplicative inverse but does have the property that there is a non-zero element that multiplies it to 0 bar: 2 * 2 = 0

****
####  Some Definitions and Property's

1) a bar + b bar = (a + b) bar
2) a bar * b bar = ab bar
3) 0 bar is the additive identity
4) 1 bar is the multiplicative identity
5) if a bar * b bar = 1 then they are multiplicative inverses
6) if a bar doesn't equal 0, and b bar doesn't equal zero but a bar * b bar is equal to 0 then they are 0 divisors.

The r is the residue of a modulo n, and it is written as the following:

$$
r = a modn
$$
So for example 15 mod 4 is equal to 3, since 15 = 4 * 3 + 3
Notice that we can expand upon this and derive more conclusions.

#### General Fact we need to prove

a bar is a unit of Z/N if and only if a and n are relatively prime (share no common prime factors)
12 = 2 * 2 * 3

0 ,1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11

units: 
zero divisors: