class Solution:
    def connect(self, root: 'Node') -> 'Node':
        dummy = root
        while root and root.left:
            current = root
            # 
            while current and current.left:
                current.left.next = current.right
                if current.next:
                    current.right.next = current.next.left
                else:
                    current.right.next = None
                current = current.next
            # Move on to the next layer.
            root = root.left
        return dummy

# In this problem, it is a given that the binary tree is perfect (all leaves are on
# the same level and each parent has a left and right child node).
# As such, we go down layer by layer, starting at the leftmost child.
# As left.next points to the right child, we are able to access the entire layer
# by starting at the leftmost child.