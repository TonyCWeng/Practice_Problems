class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# Given a singly linked list, determine if it is a palindrome.
# Could you do it in O(n) time and O(1) space?

def is_palindrome1(head)
  values = []
  until head.nil?
    values << head.val
    head = head.next
  end
  values == values.reverse
end
# Time and Space Complexity of O(n). Need to get rid of extra space.

def is_palindrome2(head)
  value = 0
  until head.nil?
    # to take care of negative values
    head.val = head.val * -1 if head.val < 0
    value = value * 10 + head.val
    head = head.next
  end
  verify_palidrome(value)
end

def verify_palidrome(value)
  total = value
  reversed = 0
  while value > 0
    # Modulo 10 will always return the last digit of value
    # (at least, for a number in bsae 10).
    # At each iteration, we multiply the previously attained numbers by 10
    # before tacking on the next digit of the original value in reverse order.
    # Lastly, we remove the last digit of the original value by dividing value
    # by ten (as we have already added it to our reversed).
    last_digit = value % 10
    reversed = (reversed * 10) + last_digit
    value = value / 10
  end
  p [reversed, total]
  reversed == total
end

# Limitations: is_palindrome2 only works for single digit values.

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(2)
e = ListNode.new(1)

a.next = b
b.next = c
c.next = d
d.next = e

f = ListNode.new(111)
g = ListNode.new(111)
f.next = g
# p is_palindrome2(a)
# p is_palindrome2(f)

def is_palindrome3(head)
  return true if head.nil? || head.next.nil?
  length = find_length(head)
  halfway_point = (length / 2) - 1
  starting_points = reverse_half_list(head, halfway_point)

  first = starting_points.first
  second = starting_points.last

  if length.odd?
    # if the length is odd, we skip over the middle node.
    second = second.next
  end

  until first.nil? || second.nil?
    return false unless first.val == second.val
    first = first.next
    second = second.next
  end
  true
end

def find_length(head)
  length = 0
  until head.nil?
    length += 1
    head = head.next
  end
  length
end

def reverse_half_list(head, halfway_point)
  # doesn't actually reverse the list if length == 2
  return [head, head.next] if halfway_point.zero?
  idx = 0
  prev = nil
  current_node = head
  until idx > halfway_point
    next_node = current_node.next
    current_node.next = prev
    prev = current_node
    current_node = next_node
    idx += 1
  end

  [prev, current_node]
end
p is_palindrome3(a)
