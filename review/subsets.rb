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

def subsets(arr)
  arr = []
  i = 0
  while i < arr.length
    arr << arr.combination(i).to_a
  end
  arr.uniq
end
