def subsets(arr)
  return [[]] if arr.empty?

  subs = subsets(arr[1..-1])
  new_subs = subs.map { |sub| sub + [arr[0]] }
  subs.concat(new_subs)
end

# Each item can either be present or not present in the subset,
# as such, there will always be 2**n total subsets.
# p subsets([1, 2, 3, 4])
# p [1, 2, 3] + [3]

def all_subsets(arr)
  subset = Array.new(arr.length)
  create_subset(arr, subset, 0)
end

# where arr is the original array, subset is the state of the current
# subset and i is the index of the current item in the original array

def create_subset(arr, subset, i)
  if i == arr.length
    remove_nil_and_print(subset)
  else
    # Each value is either present or not present in the array
    subset[i] = nil
    create_subset(arr, subset, i + 1)
    subset[i] = arr[i]
    create_subset(arr, subset, i + 1)
  end
end

def remove_nil_and_print(subset)
  subset.delete(nil)
  print subset
end

all_subsets([1, 2])
