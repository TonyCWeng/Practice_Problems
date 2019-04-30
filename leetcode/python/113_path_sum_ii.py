class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None


class Solution:
    def pathSum(self, root: TreeNode, sum: int) -> List[List[int]]:
        res = []
        self.dfs(root, sum, [], res)
        return res

    def dfs(self, root: TreeNode, sum: int, route: List[int], res: List[List[int]]):
        if not root.left and not root.right and sum == root.val:
            route.append(root.val)
            res.append(route)
        if root.left:
            self.dfs(root.left, sum-root.val, route + [root.val], res)
        if root.right:
            self.dfs(root.right, sum-root.val, route + [root.val], res)
