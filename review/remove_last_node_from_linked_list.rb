# Given a singly linked list, remove the last node of the linked list

class Node
  attr_accessor :key, :value, :next
  def initialize(key, value)
    @key = key
    @value = value
    @next = nil
  end
end

def remove_last_node(head)
  return nil if head.nil? || head.next.nil?
  current = head
  # We find the node before the last node of the linked list,
  # then we set its next to nil. By no longer pointing
  until current.next.next.nil?
    current = current.next
  end
  current.next = nil
end
