def nth_to_last(list, n)
  node1 = list
  node2 = list
  i = 0
  while idx < n
    return nil if node2 == nil
    node2 = node2.next
  end

  while node2.next != nil
    node1 = node1.next
    node2 = node2.next
  end
  return node1
end
