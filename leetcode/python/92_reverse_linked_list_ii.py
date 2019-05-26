#Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class OldSolution:
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

# Cleaned up solution with less variables and simultaneous variable assignment.
# What makes this different from reverse linked list I is that reversing
# only a portion of the linked list means that we need to keep track of 4 different
# nodes of the linked list before pairing them up with ListNode#next.
# In order to keep the list linked together after reversing the mth through nth nodes, we need:
# 1) (m-1)th node --> nth node
# 2) mth node ---> (n+1)th node
class Solution:
    def reverseBetween(self, head: ListNode, m: int, n: int) -> ListNode:
        prev = dummy = ListNode(0)
        # If m = 1, then the head will not remain the head of the linked list.
        # In the event that m = 1, dummy == prev and both point to the sentinel node,
        # the (m-1)th node, whose next will point to the nth node and new start of
        # the linked list.
        dummy.next = head
        # We need to reach the (m-1)th node and capture it for future reference.
        for _ in range(m - 1):
            prev = prev.next
        # prev = m - 1. We need to have this point to the original nth node.
        # prev.next = m. We'll have to have it point to n+1 before changing m-1's next.
        current = prev.next
        prev2 = None

        # We don't need a temporary variable if we perform all swaps simultaneously.
        # current was originally the mth node and has moved (n - m + 1) places,
        # making it the n + 1 node.
        # prev2 is one step behind, so the nth node.
        for _ in range(n - m + 1):
            current.next, prev2, current = prev2, current, current.next
        prev.next.next = current
        prev.next = prev2
        print(f"dummy.next:{dummy.next.val}, head:{head.val}")
        return dummy.next
