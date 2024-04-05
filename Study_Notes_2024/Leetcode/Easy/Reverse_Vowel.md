
## Approach

My solution was to use two pointers to solve this problem. My first thought was to check them while converging towards the center of the array. So every element will be iterated over once. The iteration only occurs every loop if the element is not a vowel. The vowels are checked with the following code...

```
 bool isVowel(char & l)
    {
        return (tolower(l) == 'a' || tolower(l) == 'e' || tolower(l) == 'i' || tolower(l) == 'i' || tolower(l) == 'o' || tolower(l) == 'u');
    }
```

The code above checks against the list of lowercase vowels. This is done to preserve functionality regardless of the vowels case. Now that the vowel checking is handled lets analyze the code further.

The variable i represents the first half of the array while the variable j represents the second half. These are then swapped using the `std::swap(T, T)` functionality. Then the j and i are incremented and decremented respectively in order to avoid duplicate swaps.

The continue key word allows us to skip the swaping until a vowel is found. This is done by continuing the loop by restarting it rather than the loop body.

## Complexity

- Time complexity: O(N)
- Space complexity: O(1)

## Code

```
class Solution
{
    public:
        string reverseVowels(string s)
        {
            int i = 0;
            int j = s.size() - 1;  
            while (i < j)
        {
            if (!isVowel(s[i]))
            {
                i++;
                continue;
            }
            if (!isVowel(s[j]))
            {
                j--;
                continue;
            }
            swap(s[i], s[j]);
            i++;
            j--;
        }
        return s;
        }
    bool isVowel(char & l)
    {
        return (tolower(l) == 'a' || tolower(l) == 'e' || tolower(l) == 'i' || tolower(l) == 'i' || tolower(l) == 'o' || tolower(l) == 'u');
    }
};

```


## Navigation

- [Root Dir](../Index.md) <img src="../../../Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">
- [Parent Dir](Index.md) <img src="../../../Assets/parent.png" alt="Root Dir Folder" style="width:20px;height:20px;">

