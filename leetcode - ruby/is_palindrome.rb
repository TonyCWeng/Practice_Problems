
# def is_palindrome(head)
#   values = []
#   until head.nil?
#     values << head.val
#     head = head.next
#   end
#   values == values.reverse
# end
# Time and Space Complexity of O(n)

def is_palindrome(head)
  value = 0
  pow = 1
  until head.nil?
    value += head.val**pow
    pow += 1
    head = head.next
  end
  verify_palidrome(value)
end

def verify_palidrome(value)
  total = value
  reversed = 0
  while value > 0
    mod_10 = value % 10
    reversed = (reversed * 10) + mod_10
    value = value / 10
  end
  reversed == total
end

verify_palidrome(1001)
