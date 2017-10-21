
def insertion_sort(arr)
  sorted = [arr.shift]

  arr.each do |el|
    sorted_idx = 0

    while sorted_idx < sorted.length
      if el <= sorted[sorted_idx]
        sorted.insert(sorted_idx, el)
        break
      elsif sorted_idx == sorted.length - 1
        sorted.insert(sorted_idx + 1, el)
        # sorted << el
        break
        # if we don't break out of the loop, then it would loop back to
        # the first conditional.
      end
    sorted_idx += 1
    end
  end
  sorted
end

p insertion_sort([4,3,2,7,9])

# Stable sort
# O(1) extra space
# O(n**2) comparisons and swaps at worst case
# Adaptive: O(n) in best case scenario (almost sorted arr)
