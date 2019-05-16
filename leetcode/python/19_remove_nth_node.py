# 19. Remove Nth Node From End of List

class ListNode:
    def __init__(self, val):
        self.val = val
        self.next = None

class Solution:
    def removeNthFromEnd(self, head: ListNode, n: int) -> ListNode:
        faster = slower = res = ListNode(0)
        faster.next = head
        for _ in range(n):
            faster = faster.next
        while faster.next:
            slower = slower.next
            faster = faster.next
        slower.next = slower.next.next
        return res.next