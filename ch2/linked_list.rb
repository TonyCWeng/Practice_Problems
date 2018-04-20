class Node
  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # Detaching from the linked list, not deleting.
    # when we remove the current node from the linked list, we need to keep the rest of the linked
    # list intact. As such, if it has a predecessor, we have it point to
    # either the next node or nil (if the node we are removing was the last node).
    # As this is a doubly linked list, we also need to point its potential successor
    # to its previous node. Lasly, we set its pointers to nil
    self.prev.next = self.next if self.prev
    self.next.prev = self.prev if self.next
    self.next = nil
    self.prev = nil
    self
  end

end
