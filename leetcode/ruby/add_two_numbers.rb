# leet code problem Add Two Numbers
# You are given two non-empty linked lists representing two non-negative integers.
# The digits are stored in reverse order and each of their nodes contain a single
# digit. Add the two numbers and return it as a linked list.

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def add_two_numbers(l1, l2)
  sum1 = sum_link(l1)
  sum2 = sum_link(l2)
  total = sum1 + sum2
  first_link = nil
  next_link = nil
  #convert the total to a string before adding its integers in reverse order
  total.to_s.chars.reverse.each do |el|
    if first_link.nil?
      first_link = ListNode.new(el.to_i)
      next_link = first_link
    else
      next_link.next = ListNode.new(el.to_i)
      next_link = next_link.next
    end
  end
  first_link
end

def sum_link(link)
  sum = ""
  while !link.nil?
    sum = link.val.to_s + sum
    link = link.next
  end
  sum.to_i
end
