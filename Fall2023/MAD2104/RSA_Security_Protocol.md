
#### Intro to Number Theory
Elementary number theory involving _modular arithmetic_ appears several places in the efficient workings of a computer. - Clock cycles, cryptography, digital signatures, arithmetic algorithms, etc. It is used largely in _security algorithms._

#### RSA Security Protocol
Anytime someone does a secure exchange of information, one must encrypt the data, to protect its use.

1) Part one involves Key generation
2) Part two involves Message encryption and decryption

<b>1977</b>: _Rivest, Shamir, and Aldeman_, developed the RSA encryption algorithm
The only person who can decrypt the message is the person that has the key. 

#### Key Generation

1) Chose 2 large prime number (200+ digits), we will call these p and q
2) Set n = pq, and chose an odd integer e with 3 ≤ e ≤ n-1, and e relatively prime to both p-1 and q-1. 
3) Set L = l * c * m * (p-1, q-1)
4) Since the gcd(e, l) = 1, use the Euclidean algorithm to find integers d and k such that  1 = e * * d + k * l
5) Publish the public key (n,e)
6) Keep secret private key

The _public key_ is used to encrypt the message, and the _private key_ is used to decrypt it. 

#### Encryption and Decryption

Let m be a bit code 0 ≤ m ≤ n. Think of m as the binary representation of a _message_ that party A wants to show party B. 

1) Party B publishes their public key, (n,e), everyone can see the public key but only party B knows the private key
2) Party A takes their message m and encrypts it as $c = m^e mod n$
3) Party A sends a _cipher text_ c to party B
4) Party B takes the cipher text c by calculating $c^d mod n = m^{ed} mod n = m$

#### What do we need to learn to understand RSA

- Prime numbers
- Relatively prime numbers
- gcd and lcm
- Euclidean algorithm
- a mod n
- Euler totient function
- linear congruency 
- Bezouts theorem 
- Fundamental theorem of arithmetic