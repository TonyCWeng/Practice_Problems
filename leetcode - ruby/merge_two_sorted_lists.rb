
def merge_two_lists(l1, l2)
  # Originally plucked the smaller of l1 and l2's values, but it looks
  # a lot cleaner to just have a dummy starting node.
  new_list_head = ListNode.new(0)
  current_list_node = new_list_head

  while l1 && l2
    if l1.val <= l2.val
      current_list_node.next = l1
      l1 = l1.next
    else
      current_list_node.next = l2
      l2 = l2.next
    end
    current_list_node = current_list_node.next
  end

  # Only one of the two until loops will run, at most.
  # If both lists are empty, then neither would run and we would return
  # nil, as there wouldn't be a node that follows the new_list_head.
  until l1.nil?
    current_list_node.next = l1
    l1 = l1.next
    current_list_node = current_list_node.next
  end

  until l2.nil?
    current_list_node.next = l2
    l2 = l2.next
    current_list_node = current_list_node.next
  end

  new_list_head.next
end
