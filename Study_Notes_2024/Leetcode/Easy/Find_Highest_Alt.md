## Approach

To have two variables storing the current altitude and the highest. These are represented by g : current and c : highest. Then I iterated through each element, while incrementing the g value by the new element in the iteration. If g is larger than c will be set to it.

Take the example input `1, -3, 3, -1`. The first element added to g will be `1`. Since one is greater than c, which is equal to 0 currently, it will be stored in c. Then on the next iteration g will become `-2` since `-2 = (1) + (-3)`. The value 1 will be stored again in c since it is the larger value.

## Complexity

- Time complexity: O(n)

- Space complexity: O(1)

## Code

```cpp
class Solution {
public:
    int largestAltitude(vector<int>& gain) {
        int c = 0;
        int g = 0;
        for(auto& el : gain){
            g += el;
            c = std::max(c, g);
        } 
        return c;
    }
};
```

## Navigation 

- [Root Dir](../Index.md) <img src="../../../Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">
- [Parent Dir](Study_Notes_2024/Leetcode/Easy/Index.md) <img src="../../../Assets/parent.png" alt="Root Dir Folder" style="width:20px;height:20px;">

