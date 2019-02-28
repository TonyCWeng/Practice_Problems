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

class LinkedList

  def initialize
    @head = Node.new
    @tail = Node.new
    # the head and tail are both empty nodes.
    # they serve as sentry nodes, denoting the start and end of the linked list
    # and should not count as a proper linked list entry despite being nodes
    @head.next = @tail
    @tail.prev = @head
  end

  # def [](x)
  #   each_with_index { |node, y| return node if x == y }
  #   nil
  # end

  def empty?
    @head.next == @tail
  end

  def first
    empty? ? nil : @head.next
  end

  def last
    empty? ? nil : @tail.prev
  end
end
