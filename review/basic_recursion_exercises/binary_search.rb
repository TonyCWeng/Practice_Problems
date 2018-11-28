def binary_search(arr, target)
  return -1 if arr.empty?
  pivot_idx = arr.length / 2

  left = arr[0...pivot_idx]
  right = arr[pivot_idx + 1..-1]

  case target <=> arr[pivot_idx]
  when -1
    binary_search(left, target)
  when 0
    pivot_idx
  when 1
    search_idx = binary_search(right, target)
    # The search_idx is offset by the pivot_idx + 1
    search_idx == -1 ? -1 : search_idx + pivot_idx + 1
  end
end
p binary_search([-1,0,3,5,9,12], 1)

# left and right default to 0 (starting idx) and last idx of the array
def bsearch(arr, target)
  return -1 if arr.empty?
  left = 0
  right = arr.length - 1
  bsearch_helper(arr, target, left, right)
end

def bsearch_helper(arr, target, left, right)
  p [left, right]
  return -1 if left > right
  midpoint = (left + right) / 2

  if arr[midpoint] == target
    return midpoint
  elsif arr[midpoint] > target
    bsearch_helper(arr, target, left, midpoint - 1)
  else
    bsearch_helper(arr, target, midpoint + 1, right)
  end
end

p bsearch([-1,0,3,5,9,12], 1)
