# Implement Bubble sort. Pass through the list, swapping adjacent items
# as needed.

def bubble_sort(arr)
  loop do
    swapped = false
    (arr.length-1).times do |i|
       if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break if !swapped
  end
  arr
end

# bubble sort stops when we find that there aren't any swaps made in a pass

p bubble_sort([1,2,3,4,0])
