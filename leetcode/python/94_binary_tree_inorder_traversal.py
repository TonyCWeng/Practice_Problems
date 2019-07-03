# Definition for a binary tree node.
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

# inorder: left, root, right
class Solution:
    def inorderTraversal(self, root: TreeNode) -> List[int]:
        if root is None:
            return []
        traversal_order, stack = [], []
        node = root
        while node and stack:
            if node:
                stack.append(node)
                node = node.left
            else:
                node = stack.pop()
                traversal_order.append(node.val)
                node = node.right
        return traversal_order

class RecursiveSolution:
    def inorderTraversal(self, root: TreeNode) -> List[int]:
        inorder = []
        def dfs(node, inorder):
            if node:
                dfs(node.left, inorder)
                inorder.append(node.val)
                dfs(node.right, inorder)
        dfs(root, inorder)
        return inorder