class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# Given a singly linked list, determine if it is a palindrome.
# Could you do it in O(n) time and O(1) space?

def is_palindrome(head)
  values = []
  until head.nil?
    values << head.val
    head = head.next
  end
  values == values.reverse
end
# Time and Space Complexity of O(n). Need to get rid of extra space.

def is_palindrome(head)
  value = 0
  until head.nil?
    value = value * 10 + head.val
    head = head.next
  end
  verify_palidrome(value)
end

def verify_palidrome(value)
  total = value
  reversed = 0
  while value > 0
    # Modulo 10 will always return the last digit of value.
    # At each iteration, we multiply the previously attained numbers by 10
    # before tacking on the next digit of the original value in reverse order.
    # Lastly, we remove the last digit of the original value by dividing value
    # by ten (as we have already added it to our reversed).
    last_digit = value % 10
    reversed = (reversed * 10) + last_digit
    value = value / 10
  end
  reversed == total
end

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(2)
e = ListNode.new(1)
a.next = b
b.next = c
c.next = d
d.next = e
p is_palindrome(a)

# p verify_palidrome(6006)
