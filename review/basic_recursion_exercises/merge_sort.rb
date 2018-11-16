def merge_sort(arr)
  # Base case for an empty array or array of length 1
  return arr if arr.length <= 1

  left = arr[0...arr.length / 2]
  right = arr[arr.length / 2..-1]
  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  merged_arr = []
  until left.empty? || right.empty?
    if left[0] <= right[0]
      merged_arr << left.shift
    elsif left[0] > right[0]
      merged_arr << right.shift
    end
  end
  # As the left and right arrays have already been sorted,
  # once one of the two empties out, we can just add the contents
  # of the remaining array to the merged array.
  merged_arr + left + right
end

p merge_sort([6, 12, 9, 22, 48, 99, 101])
