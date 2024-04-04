
## Explanation

Because `str1 + str2 == str2 + str1` they must have a gcd. For instance, if the string `"abab"` is added to `"ab"` we are left with `"ababab" == "ababab"`. In either case, we are left with the same result. Thus they must have some common sub-string. 

If the condition is true (i.e., the strings are equal when concatenated in both orders), the method returns a substring of `str1` starting from index 0 and ending at the greatest common divisor (GCD) of the lengths of `str1` and `str2`.

If the condition is false then there is not a substring. Meaning that the function will return an empty string `""`, denoting that there is no common divisor.

****
## Solution

```cpp
class Solution {
public:
    string gcdOfStrings(string str1, string str2) {
        return (str1 + str2 == str2 + str1)?
        str1.substr(0, gcd(size(str1), size(str2))): "";
    }
};
```

## Navigation

- [Root Dir](Index.md) <img src="../../../Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">
- [Parent Dir](Index.md) <img src="../../../Assets/parent.png" alt="Root Dir Folder" style="width:20px;height:20px;">

