# Approach
<!-- Describe your approach to solving the problem. -->
Using two pointers to iterate through the list. This approach begins with the ith number and checks the element contained in i and j against the target, the j pointer represents numbers proceeding the ith index. This allows the solution to check every number against one another in order to find the solution.
# Complexity
- Time complexity: $O(N^2)$ solution

# Code
```
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        for(int i = 0 ; i < nums.size() -1; i++){
            for(int j = i + 1; j < nums.size(); j++){
                if(nums[i] + nums[j] == target){
                    return vector<int>{i, j};
                }
            }
        }
        return vector<int>{};
    }
};
```

# What We Can Improve
First there is obviously a much more efficient way to solve this problem. When in doubt use a hash map. So that's exactly what we will do. For counting problems HashMap are extremely useful because of their O(1) search operations. 

If we think deeper about the problem we find that `index1 + index2 == target` is equivalent to saying that `index1 == target - index2`. Since this holds true we can use this to our advantage to dramatically improve our search time. This would also reduce our time complexity from $O(N^2)$ to $O(N)$, since constant operations such as search do not affect our time complexity as dramatically when using a hash map. 

We can apply these rules in the following way:
- add all elements to hash map ensuring that their value is the key, because we are returning the index.
- Then check to see if the element has the needed compliment to equal the target.
- If this compliment is found return the current element and its compliment. 
- If no element is found then we need to return an empty array.

# Improved Code
```cpp
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        // O(N) Solution
        unordered_map<int, int> count;

        // Add All el to hashmap -- index is the num val, val stored is the index
        for(int i = 0; i < nums.size(); i++){
            count[nums[i]] = i;
        }

        for(int i = 0; i < nums.size(); i++){
            int n = target - nums[i]; // see if the other number needed is present
            if(count.count(n) && count[n] != i){
                return vector<int>{i, count[n]}; 
                // Note Shorthand will work as well -- 
                // return {i, count}; -- I feel as though the 
                // alternative is more understandable however
            }
        }
        return vector<int>{};
        

    }
};
```

## Navigation

- [Root Dir](../Index.md) <img src="../../../Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">
- [Parent Dir](Index.md) <img src="../../../Assets/parent.png" alt="Root Dir Folder" style="width:20px;height:20px;">

