## Binary Notes!

| Base | Common Name | Digits     |
| ---- | ----------- | ---------- |
| 10   | Decimal     | 0-9        |
| 2    | Binary      | 0, 1       |
| 8    | Octal       | 0-7        |
| 16   | Hexadecimal | 0-9, A - F |
### Conversion Between Representations

- To convert to decimal, we divide by two, and collect the remainders.
- To convert from binary to decimal we find the digits position (relative from the back), and find the power of that position in the form of $2^{Position(Starting At 0)}$
- To convert from base 16 to base 2 we replace evert digit by a 4 bit string.
- To convert from base 2 to base 16 we divide the digits into groups of 4, then apply the table on slide 6.
- For octal numbers we do the same as Hex, but use 3 digit groups

### Addition in Binary

![](/Assets/rules-of-binary-addition.webp)

### Subtraction In Binary

![](/Assets/Binary-Subtraction-Step-2.webp)

****

### Signed Numbers

- **Two's Complement in n bits:** the negative of a two's complement is given by inverting each bit, and then adding 1, ignore any carry beyond n bits (take only lower n bits)
- **If numbers are represented in n bits:** the positive numbers are from 0000... to 01 to 0111...111, negative numbers are from 10000...000 to 11111....111
- **The leading bit is called the "sign bit":** 0 means non-negative, 1 means negative.

| Type    | Number of bits |
| ------- | -------------- |
| char    | 8              |
| short   | 16             |
| int     | 32             |
| long    | 64             |
| general | n              |

### Converting from 2's Compliment to Decimal

- The same process
- Invert the bits and add 1, then attach a negative sign
- $0010010_2$ = 18

****

## Sign Extension

If per-say we needed to to convert from short to int, we simply add leading 0's so that it fits within the bit requirement. However if the data is signed than we must preserve the signage. We can do this by adding 1's if the short is negative.

****


