# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None


class Solution:
    def longestUnivaluePath(self, root: TreeNode) -> int:
        self.longest = 0

        def traverse(node, parent_val):
            if not node:
                return 0
            left, right = traverse(node.left, node.val), traverse(
                node.right, node.val)
            self.longest = max(self.longest, left + right)
            return 1 + max(left, right) if node.val == parent_val else 0
        traverse(root, None)
        return self.longest
