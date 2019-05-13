class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def mergeTwoLists(self, l1, l2):
        # The variable first is a placeholder. It is skipped over in the return statement
        # as we return first.next
        first = current_node = ListNode(None)
        while l1 and l2:
            if l1.val < l2.val:
                current_node.next = l1
                l1 = l1.next
            else:
                current_node.next = l2
                l2 = l2.next
            current_node = current_node.next
        # Tack on the rest of the remaining list. LTE without this approach.
        current_node.next = l1 or l2
        return first.next
