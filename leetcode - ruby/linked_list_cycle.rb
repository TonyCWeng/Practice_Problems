class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

require 'set'
def has_cycle?(head)
  set = Set.new
  until head.nil?
    return true unless set.add?(head)
    head = head.next
  end
  false
end

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(4)
e = ListNode.new(5)
a.next = b
b.next = c
c.next = d
d.next = a

p has_cycle?(a) == true
p has_cycle?(e) == false

# Using two pointers, we solve this problem in O(n) time with O(1) added space
# We essentially have one fast pointer and one slow pointer. If there is a
# loop, then the slow and fast pointers should eventually point to the same
# node. We should be unable to hit nil if there is a cycle, so if we do
# hit nil, then we can end the loop and return false.
def cycle_detected?(head)
  slow, fast = head, head
  while fast && fast.next
    fast = fast.next.next
    slow = slow.next
    return true if fast == slow
  end
  false
end
p cycle_detected?(a) == true
p cycle_detected?(e) == false
