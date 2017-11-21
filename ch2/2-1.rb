require 'set'

# return a linked list with its duplicate values removed
def remove_duplicates(list)
  uniques = Set.new()
  current = list
  prev = nil

  while current
    if uniques.include?(current.value)
      prev.next = current.next
    end
    uniques.add(current.value)
    prev = current
    current = current.next
  end
  list
end
