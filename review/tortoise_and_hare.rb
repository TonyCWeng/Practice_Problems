# write a method which will determine whether or not a linked list is cyclical.
# each link in the list holds a next reference to the next item in the list aside from
# the last which points to nil.
require 'set'

def cyclic?(first_link)
  set = Set.new
  current_link = first_link
  until current_link.nil?
    return true if set.include?(current_link)
    set.add(current_link)
    # can also do set << current_link, as << is an alias for add
    current_link = current_link.next
  end
  false
end

def cyclic?(first)
  hare = first
  tortoise = first
  while true
    2.times do
      hare = hare.next
      return false if hare.nil?
      return true if hare == tortoise
    end
    tortoise = tortoise.next
  end
end

# two pointers, if it's cyclical, the hare and tortoise will eventually point
# to the same link in the list. If it is not cyclical, then hare.next will eventually
# point to nil. The false statement should come first, as the first link could be
# nil or the only link in the list.
