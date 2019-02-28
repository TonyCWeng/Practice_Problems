class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end


def delete_duplicates(head)
  current = head
  while current && current.next
    if current.val == current.next.val
      # We delete duplicates by pointing to the duplicate's next value.
      # We set the current node to the next node if the current and next
      # value are not duplicates. We cannot do so at every step as
      # it is possible for current to equal current.next.next
      current.next = current.next.next
    else
      current = current.next
    end
  end
  # return the head after removing all duplicates.
  head
end
