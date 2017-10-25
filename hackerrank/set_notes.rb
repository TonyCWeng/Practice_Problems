require 'set'

#Set possesses .length, works the same as with any other structure.
cur = Set.new
cur << 4
cur.add(3)
#cur << 4 == cur.add(4)

p cur.inspect
#Otherwise, we'd get the set returned, but not see the values inside
p cur.to_a

def cyclic?(first_link)
  set = Set.new
  current_link = first_link
  until current_link.nil?
    return true if set.include?(current_link)
    set.add(current_link)
    current_link = current_link.next
  end
  false
end

def cyclic?(first)
  slow = first
  fast = first

  # fast will eventually compare itself to every other value if the linked list
  # is cyclical.
  loop do
    2.times do
      fast = fast.next
      return false if fast.nil?
      return true if fast = slow
    end
    slow = slow.next
  end
end
