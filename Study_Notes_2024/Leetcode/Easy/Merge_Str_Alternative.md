## Explanation

The basic idea behind my solution was to switch between the word indexed by iterating one then the other. I accomplished this by using two pointers `s` and `j`. `s : word1, j : word2`. 

The for loop iterates through the combined size of `word1 + word2`. This is due to the solution requiring access to each element of the array. So these are accessed one by one.  Since the condition `if(s < j)` is false the first if block will not run on the first iteration. The first if else block will run appending the first char in word1 to the return string. 

Then on the second iteration the first if block will run. This again appends to the list adding the alternating word. So if `mergeAlternately("hey", "you")` is ran the result will return `"hyeoyu"`. The conditions `j < word2.size() +1`, etc added to each if block ensure that the elements maintain their output regardless of size variation. This is assists in resolving problems such as `word1 = "ab", word2 = "pqrs"`. 

****
## Solution

```
class Solution {
public:
    string mergeAlternately(string word1, string word2) {
        int j = 0, s = 0;
        string return_str;
        for(int i = 0; i < word1.size() + word2.size(); i++){
            if(s < j && j < word2.size() + 1){
              return_str += word2[s]; 
              s++;
            }
            else if(j < word1.size()){
                return_str += word1[j]; 
                j++; 
            }
            else if(s <= word2.size()){
               return_str += word2[s]; 
              s++; 
            }
        }
        return return_str;
    }
};
```

****
## Navigation

- [Root Dir](../Index.md) <img src="../../../Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">
- [Parent Dir](Study_Notes_2024/Leetcode/Easy/Index.md) <img src="../../../Assets/parent.png" alt="Root Dir Folder" style="width:20px;height:20px;">

