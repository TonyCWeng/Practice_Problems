def reverse_list(head)
  # The last node in a singly linked list points to nil. As such,
  # our first node ought to point to nil.
  prev = nil
  current = head
  # While we still have nodes, we will continue to loop through and reverse
  # our linked list.
  while current
    # We need a variable to keep track of the next node in the list
    next_node = current.next
    current.next = prev
    prev = current
    current = next_node
  end
  # prev's first node is now set to the original linked list's last node.
  # prev.next now points to the 2nd last node and so on.
  prev
end

# Time Complexity: O(n). We do have to iterate through every single node
# in the list once.
# Space Complexity: O(1). 3 pointers regardless of linked list length.

# Recursive
def recursive_reverse_list(head)
  prev = nil
  current = head
  reverse(prev, current)
end

def reverse(previous_node, current_node)
  # Our base case when we've run out of nodes.
  return previous_node if current_node.nil?

  next_node = current_node.next
  current_node.next = previous_node
  # recursive step
  reverse(current_node, next_node)
end
