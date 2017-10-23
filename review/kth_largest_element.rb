def find_kth_largest(arr, k)
  arr.sort[-k]
end

# Array#sort is quicksort (nlog n). indexing into an array

print find_kth_largest([5,4,11,20,31], 2)
