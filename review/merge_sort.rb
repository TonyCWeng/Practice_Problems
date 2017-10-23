def merge_sort(arr)
  return arr if arr.count == 1

  middle = arr.length / 2
  left = arr[0...middle]
  right = arr[middle...arr.length]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)
  merge(sorted_left, sorted_right)
end

def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    if left[0] < right[0]
      merged << left.shift
    else
      merged << right.shift
    end
  end
  merged + left + right
end

p merge_sort([4, 1, 6, 8])
