# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def deleteDuplicates(self, head: ListNode) -> ListNode:
        prev = dummy = ListNode(0)
        while prev:
            if head and head.next and head.next.val == head.val:
                dupe_val = head.val
                while head and head.val == dupe_val:
                    head = head.next
            else:
                prev.next = head
                prev = head
                if head:
                    head = head.next
        return dummy.next
