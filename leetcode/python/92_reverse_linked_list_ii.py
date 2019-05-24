#Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def reverseBetween(self, head: ListNode, m: int, n: int) -> ListNode:
        prev = dummy = ListNode(0)
        dummy.next = head
        for _ in range(m - 1):
            prev = head
            head = head.next
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
