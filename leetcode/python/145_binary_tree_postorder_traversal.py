# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

#Postorder: left, right, root
# Iterative solution
class Solution:
    def postorderTraversal(self, root: TreeNode) -> List[int]:
        if root is None:
            return []
        stack = [root]
        traversal_order = []
        while stack:
            current = stack.pop()
            traversal_order.append(current.val)
            if current.left:
                stack.append(current.left)
            if current.right:
                stack.append(current.right)
        traversal_order.reverse()
        return traversal_order

def recursivePostorderTraversal(root):