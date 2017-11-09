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
