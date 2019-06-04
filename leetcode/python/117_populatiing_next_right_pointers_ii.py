class Solution:
    def connect(self, root: 'Node') -> 'Node':
        if not root or not root.left and not root.right:
            return root
        children = []
        if root.left:
            children.append(root.left)
        if root.right:
            children.append(root.right)
        while children:
            next_level = []
            for idx, node in enumerate(children):
                if idx == len(children) - 1:
                    node.next = None
                else:
                    node.next = children[idx + 1]
                if node.left:
                    next_level.append(node.left)
                if node.right:
                    next_level.append(node.right)
            children = next_level
        return root

# In this version of the problem, we are not guaranteed a perfect tree.
# As such, while we must still start at the leftmost node of each layer, there is
# no guarantee for any layer node to actually have a next node.
# This implementation tackles that issue by iterating through each layer, setting the
# layer's children nodes.next and also storing children (left before right) to be
# the next layer. In each layer, a node will point to the next node in this list
# until we reach the end, where the rightmost node points to None.
# Time Complexity: O(n), where n = number of nodes in tree.
# Space Complexity: O(n), as the bottom most layer can be at worst n/2 nodes.