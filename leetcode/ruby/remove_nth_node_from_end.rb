def remove_nth_from_end(head, n)
  # If there's one or zero nodes, then we'd either remove the only node
  # or there's nil to return in the first place.
  return nil unless head.next
  fast, slow = head, head
  count = 0
  until fast.nil?
    # count > n means that the fast runner is n + 1 positions in front
    # of the slow runner. We need it to be the case because our method of
    # "removal" is to simply have no nodes directing towards the deleted
    # node.
    slow = slow.next if count > n
    fast = fast.next
    count += 1
  end
  # If the length of the linked list == n, then we must remove the head
  # and return the rest. As the "slow" value is the node directly before
  # the targeted node, the ordinary return case does not cover this edge case.
  # Without this early return, we are unable to remove the first node in
  # the linked list.
  return head.next if count == n
  slow.next = slow.next.next
  head
end
