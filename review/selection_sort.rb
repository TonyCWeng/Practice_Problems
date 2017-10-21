# selection sort works in-place, swapping out values for lower ones.
# time complexity of O(n**2), extra space complexity of O(1)
def selection_sort(arr)
  min_idx = 0
  idx1 = 0
  while idx1 < arr.length
    idx2 = idx1 + 1
    while idx2 < arr.length
      if arr[min_idx] > arr[idx2]
        min_idx = idx2
      end
      idx2 += 1
    end
    arr[idx1], arr[min_idx] = arr[min_idx], arr[idx1]
    idx1 += 1
  end
  arr
end

def selection_sort(arr)
  min_idx = 0
  arr.each_index do |idx1|
    idx2 = idx1 + 1
    while idx2 < arr.length
      if arr[min_idx] > arr[idx2]
        min_idx = idx2
      end
      idx2 += 1
    end
    arr[idx1], arr[min_idx] = arr[min_idx], arr[idx1]
  end
  arr
end

print selection_sort([11,2,7,9])
