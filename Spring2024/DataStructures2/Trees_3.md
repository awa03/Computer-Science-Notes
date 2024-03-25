## AVL Trees

<b>AVL Trees</b> are binary search trees with balance conditions. They must ensure the depth of the tree is O(log N). Consequently the search complexity as also bound by O(logN)

The <b>Balance Condition</b>, ensures for every node the height of their left and right subtree can at most differ by 1
- Maintain by rotation if the condition is <b>violated</b>
- Assuming lazy deletion

![[Firefox_Screenshot_2024-03-22T19-51-53.025Z.png]]


### Balance Condition Violation

<b>If condition violated after a node insertion</b>
- Only nodes on the path from insertion point to root may have their balance altered
- If rebalance at the <b>deepest node</b> the entire tree will need to be rebalances

Will require overhead; Extra space for maintaining height information at each node, makes insertion more expensive. However all operations except insertion are O(logN). This is particularly important for the search operation. 