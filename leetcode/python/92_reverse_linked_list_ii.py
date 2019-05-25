#Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def reverseBetween(self, head: ListNode, m: int, n: int) -> ListNode:
        # We require a dummy node, prev, for the case when m = 1, the first node of the
        # linked list. We require an additional sentry node to serve as our return
        # value. More specifically, dummy.next will point to head and we will
        # return head.
        prev = dummy = ListNode(0)
        dummy.next = head
        for _ in range(m - 1):
            prev = head
            head = head.next
        # We need to retain a pointer to node m-1, prev, before we start reversing the
        # linked list. We need this node.next to point to the nth node.
        # The nth node 
        temp = prev2 = head
        head = head.next
        for _ in range(n - m):
            next_node = head.next
            head.next = prev2
            prev2 = head
            head = next_node
        prev.next = prev2
        temp.next = head
        return dummy.next
