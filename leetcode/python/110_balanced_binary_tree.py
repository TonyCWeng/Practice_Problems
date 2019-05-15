class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def isBalanced(self, root):
        def dfs(node):
            if not node:
                return 0
            left = dfs(node.left)
            if left == -1:
                return - 1
            right = dfs(node.right)
            if right == -1:
                return -1
            if abs(left - right) > 1:
                return -1
            return max(left, right) + 1
        dfs_res = dfs(root)
        return dfs_res(root) != -1

# Bottom-up DFS approach. Check from the lowest subtrees to make sure they are balanced.
# left and right only return -1 if the absolute difference in height is greater
# than one (imbalanced).
# As we build up to the heights required to find left and right heights of the root,
# we are making a single pass. Time Complexity: O(n)
