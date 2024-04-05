## Approach

I approached this problem by using the two pointers solution. I used a left and right pointer, indicated by the i - left and j - right. This approach allowed me to swap the zeros with the next occurrence of a right number.

This means that when this code runs it first attempts to store a index where nums[i] == 0, and find the next non zero number directly to the right of i index. Then a swap is performed, leading to the zeros being moved to the right. This also means that j will not find an occurrence of a non zero number, and if it does they will be further moved to the RHS.

****
## Complexity

Time complexity: O(N)

Space complexity: O(1)

****
## Code

```cpp
class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int i = 0, j = 0 ;
        for(; j < nums.size(); j++){
           if(nums[i] == 0 && nums[j] != 0){ 
                std::swap(nums[i], nums[j]);
                i++;
           }
           else if(nums[i] != 0){
            i++;
           }
        }
    }
};
```

****

## Navigation

- [Root Dir](../Index.md) <img src="../../../Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">
- [Parent Dir](Index.md) <img src="../../../Assets/parent.png" alt="Root Dir Folder" style="width:20px;height:20px;">

