# Definition for a binary tree node.
class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def isValidBST(self, root: TreeNode) -> bool:
        if not root:
            return True

        def validate(node, lower_limit, upper_limit):
            if not node:
                return True
            if node.val <= lower_limit:
                return False
            if node.val >= upper_limit:
                return False
            return validate(node.left, lower_limit, node.val) and validate(node.right, node.val, upper_limit)

        return validate(root, float('-inf'), float('inf'))

# In order for subtrees to be valid balanced binary search trees of their own,
# we need to keep track of an upper and lower limit for the nodes. The left
# child has its upper bound determined by its parent node's value whereas the
# right child and any subsequent nodes accept the node's value as their lower_bound.
# With each layer, the lower and upper bounds will serve as validity constraints.