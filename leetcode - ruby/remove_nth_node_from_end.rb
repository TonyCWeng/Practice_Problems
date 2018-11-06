
def remove_nth_from_end(head, n)
  return head unless head.next
  fast, slow = head, head
  n.times do
    fast = fast.next
  end
  until fast.next.nil?
    slow = slow.next
    fast = fast.next
  end
  slow.val = slow.next.val
  slow.next = slow.next.next
  head
end
