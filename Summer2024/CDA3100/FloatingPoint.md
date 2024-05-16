
## Floating Point Numbers

>[!Notice]
> After the decimal point the numbers (in decimal, base 10) are decreasing powers of base 10. For example $10^{-1}$ represents the 4 in 0.4.

### How To Solve

- Convert the integer part to binary
- For the fractional part multiply the fractional part by 2. 
	- If the result is more than 1, the bit for that place is 1, otherwise 0.
	- Take the remaining fractional part and multiply by 2 again.
	- Repeat until the result is 1.0
- Some fractions may not terminate, In this case we must find if the bits form a pattern
- If no pattern is found just fill the space requirements

Floating point numbers are represented in a normalized sign-magnitude form

>[!Note]
> The digit in front of the decimal point will always be 1. 
> - The Part after the decimal point will then be the mantissa

Double's have double precision, floats have single precision. 

> [!IMPORTANT]
> There is no flipping bits in floating point conversion


| Bits    | 31 (1 bit) | 30-23 (8 bits)    | 22-0 (23 Bits) |
| ------- | ---------- | ----------------- | -------------- |
| Purpose | Sign       | Exponent (Biased) | Mantissa       |
- Since the leading 1 bit in the significand in normalized binary numbers is always 1, it is not represented explicitly
- To accommodate for negative numbers we need to move the digits
	- Add 127 to the number

### Over / Under Flow

- Outside of the range: Applies to both int and float
- The mantissa can be adjusted with the exponent for loss of precision
