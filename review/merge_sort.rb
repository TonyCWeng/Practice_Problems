def merge_sort(arr)
  return arr if arr.length < 1

  middle = arr.length / 2

  left = arr[0...middle]
  right = [middle...arr.length]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    if left.first <= right.first
      merged << left.shift
    else
      merged << right.shift
    end
  end
  merged + left + right
end

def merge_sort(arr)
  return arr if arr.length < 1

  middle = arr.length / 2
  left = arr[0..middle]
  right = [middle+1..arr.length-1]

  
