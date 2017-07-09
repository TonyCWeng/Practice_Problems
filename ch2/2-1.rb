require 'set'

def remove_duplicates(list)
  uniques = Set.new
  current = list
  prev = nil

  while current
    if (set.include?(current.value))
      prev.next = current.next
    end
    set.add(current.value)
    prev = current
    current = current.next
  end
  list
end
