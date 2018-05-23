def binary_search(arr, target)
  return nil if arr.empty?
  pivot_idx = arr.length / 2
  p pivot_idx

  left = arr[0...pivot_idx]
  right = arr[pivot_idx..-1]

  case target <=> arr[pivot_idx]
  when -1
    binary_search(left, target)
  when 0
    pivot_idx
  when 1
    search_idx = binary_search(right, target)
    # The search_idx is offset by the pivot_idx + 1
    search_idx.nil? ? nil : search_idx + pivot_idx + 1
  end

end

p binary_search([1,2,3,4,5,6,7,8,9], 1)
