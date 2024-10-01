# Hashing 

- A hash function is any function that can be used to map digital data of an arbitrary size to digital data of fixed size. The values returned by a hash function are called hash values, hash code, hash sums, etc
- A alphanumeric digital fingerprint of a set of data 
- That data can be individual
- Two slightly different sets of data will produce a very different hash value
- Used in many different ways
	- Hash table - used in software for rapid data lookup in tables or databases
	- Cryptography - verify that input data and match the given hash value, but if the input is unknown it cannot be reverse engineered from the hash value
	- File transfer over networks - verify that the file you sent is the file that was received on the other end
	- IDS (Intrusion Detection Systems) - System files are hashed on a network periodically to see if any have changed
	- Pseudo random generation - hashing can help make a random value more random
- In forensics we use hash values for file or data identity, to uniquely identify data and to prove that it has not been altered
- NSRL hash sets
	- Hide certain files aka they arent of relevance so dont include
- MD5 and SHA1 are the most popular hash functions used in forensics 
	- Efficent, Quick to calculate, collision resistant
- **The math only goes 1 way, you cant convert from one hash value to another**

### MD5

- Widely used in Cryptography

### SHA1 

- Made by the nsa
- cryptographic hash function

### Hashing In Imaging

- Computed hash, Stored Verification hash, report hash, should all be the same
- We can use tools such as FTK Imager to recalculate a hash value
- SHA1 and MD5 have been found to be vulnerable
	- Known as collisions
	- Two different sets of data that give the same hash value