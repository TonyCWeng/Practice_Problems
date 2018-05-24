def subsets(arr)
  return [[]] if arr.empty?

  subs = subsets(arr[1..-1])
  new_subs = subs.map { |sub| sub + [arr[0]] }
  subs.concat(new_subs)
end

# Each item can either be present or not present in the subset,
# as such, there will always be 2**n total subsets.
p subsets([1, 2, 3, 4])
p [1,2,3] + [3]
