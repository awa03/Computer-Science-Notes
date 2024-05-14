## Approach
<!-- Describe your approach to solving the problem. -->
When I was looking at the solutions I discovered that I am apparently the only one to try this solution. This algorithms purpose is to filter the data set every iteration. Breaking down the solution I will provide the time complexity, as well as why the code was used.

```cpp
unordered_map<int, int> count;          // O(1) - Constant
for(auto& e : arr){                     // O(N) - Linear
    count[e]++;                         // O(1) - Constant
}
// ----------------------- O(N) Time ------------------------ //
```

First we have this for loop. The purpose of this for loop is to count the number of unique occurences in the array. This is of course $O(N)$ time because it is traversing each element of the array.

```cpp
unordered_set<int> c;                   // O(1) - Constant
for(auto& e : count){                   // O(N) - Linear
    if(c.find(e.second) == c.end()){    // O(1) - Constant
        c.insert(e.second);             // O(1) - Constant 
    }
    else {                              // O(1) - Constant
        return false;                   // O(1) - Constant
    }
}
return true;                            // O(1) - Constant

// ----------------------- O(N) Time ------------------------ //
```

Next we have this for loop, which needs to be placed after the first loop in order to ensure counts (with the possibility of being unequal) do not prompt a false return as a result of a false collision.

A hash set is created in order to ensure O(1) insertion and to utalize the find operation (also O(1)). This means that the entire loop will be in O(N) time. 

The find operation compares the iterator (returned the end if not found, return the elements iterator if found) to see if the number of occurences is equal to another number of occurences. If it is then the function has concluded, and false is returned. Otherwise the element is added to the list of occurences and checked against its successors.  

****

## Other Ways To Solve This Problem

I wanted to cover the most obvious way to solve the problem, which was my first instinct in fact, however I dont see it as a very good solution. 

The most obvious way is to sort the array in some way. The reason I tried to move away from this solution was because I wanted to find a simpler O(N) solution. I believe that I did in fact accomplish this goal. 

Here is an example of some sorting implementations (With Links To Author).

### Solution - 
```cpp
class Solution {
public:
    bool uniqueOccurrences(vector<int>& arr) {
        sort(arr.begin(), arr.end());
        vector<int> v;

        for (int i = 0; i < arr.size(); i++) {
            int cnt = 1;

            // Count occurrences of the current element
            while (i + 1 < arr.size() && arr[i] == arr[i + 1]) {
                cnt++;
                i++;
            }

            v.push_back(cnt);
        }

        sort(v.begin(), v.end());

        for (int i = 1; i < v.size(); i++) {
            if (v[i] == v[i - 1]) {
                return false;
            }
        }

        return true;
    }
}; 
```

[Solution Link](https://leetcode.com/problems/unique-number-of-occurrences/solutions/4577893/beats-100-users-c-java-python-javascript-2-approaches-explained)

While this solution claims to be O(N), on further inspection this appears to be untrue. Per the [C++ Documentation](https://en.cppreference.com/w/cpp/algorithm/sort) the sort algorithms time complexity is $O(NLogN)$. In fact the algoritm that is more than likely being used is quicksort! So the worst case may be as slow as $O(N^2)$. 

This example underscores a crucial point: relying solely on built-in algorithms can introduce complexity, particularly when handling edge cases. Given this, I prefer the certainty of a worst-case O(N) approach over the unpredictability of a sorting algorithm from a library.

Moreover, employing a sorting algorithm for this problem is entirely unnecessary! Let's avoid overengineering our solutions.

****
## Complexity

- Time complexity: $O(N)$

- Space complexity: $O(N)$

****
## Code

```
class Solution {
public:
    bool uniqueOccurrences(vector<int>& arr) {
      ios_base::sync_with_stdio(false);
      // First ---> value     Second ---> occurences
      unordered_map<int, int> count;
      for(auto& e : arr){
        count[e]++;
      }
      unordered_set<int> c;
      for(auto& e : count){
        if(c.find(e.second) == c.end()){
          c.insert(e.second);
        }
        else {
          return false;
        }
      }
      return true;
    }
};
// ----------------------- O(N) Time ------------------------ //
```

****

## Navigation

- [Root Dir](../Index.md) <img src="../../../Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">
- [Parent Dir](Study_Notes_2024/Leetcode/Easy/Index.md) <img src="../../../Assets/parent.png" alt="Root Dir Folder" style="width:20px;height:20px;">
