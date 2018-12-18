# Write a function that takes an array and returns all of its subsets.

def subsets(arr)
  return [[]] if arr.empty?

  val = arr[0]
  subs = subsets(arr[1..-1])
  new_subs = subs.map { |sub| sub + [val] }
  subs + new_subs
end
# ex [1,2,3,4]
# can think of [1,2,3,4] = [1] added to subsets of [2,3,4] plus the subsets of [2,3,4]

p subsets([1, 2, 3])

def subsets_iterative(arr)
  subs = [[]]
  arr.each do |val|
    new_subs = subs.map { |sub| sub + [val] }
    subs.concat(new_subs)
  end
  subs
end
# Subsets do not care about the ordering, so it is fine for the iterative
# and recursive solutions to not entirely match.
p subsets_iterative([1,2,3])
