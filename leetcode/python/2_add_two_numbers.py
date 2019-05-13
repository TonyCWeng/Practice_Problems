# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def addTwoNumbers(self, l1, l2):
        sum_1 = self.helper(l1)
        sum_2 = self.helper(l2)
        total = sum_1 + sum_2
        numbers = list(str(total))
        numbers.reverse()
        current_node = None
        for x in numbers:
            if current_node:
                next_node.next = ListNode(int(x))
                next_node = next_node.next
            else:
                current_node = ListNode(int(x))
                next_node = current_node
        return current_node

    def helper(self, node):
        i = 0
        current, sum = node, 0
        while current:
            sum += current.val * 10**i
            i += 1
            current = current.next
        return sum
