# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def swapPairs(self, head):
        # Dummy and prev are both dummy nodes. We need both as dummy will serve as our return
        # node and prev will be used as our iterator and store values.
        dummy = prev = ListNode(0)
        prev.next = head
        # First and Second refer to the two nodes that we're going to swap.
        # We increment s
        # Continue picking out and swapping pairs until we reach the end or 1 node left.
        while prev.next and prev.next.next:
            first = prev.next
            second = first.next
            prev.next, first.next, second.next = second, second.next, first
            prev = first
        return dummy.next
