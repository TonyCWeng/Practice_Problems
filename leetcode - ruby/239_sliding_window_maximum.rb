def max_sliding_window(nums, k)
  return [] if nums.length.zero?
  i = 0
  maximums = []
  current_window = []

  while i < nums.length
    # remove the front most element once we've passed it.
    if !current_window.empty? && current_window[0] == i - k
      current_window.shift
    end

    # starting from the tail end, remove the indices that point to values lower
    # than the current index in consideration. We start at the end as it is
    # possible for elements later in the array to be smaller than the first
    # element.
    while !current_window.empty? && nums[current_window[-1]] < nums[i]
      current_window.pop
    end

    current_window << i
    if i >= k - 1
      maximums << nums[current_window[0]]
    end
    i += 1
  end
  maximums
end

a = [1,3,1,2,0,5]
p max_sliding_window(a, 3)

def max_sliding_window(nums, k)
  # window holds our current indices of interest
  window = []
  # maximums is the maximums that we will return at the very end
  maximums = []
  nums.each_with_index do |value, idx|
    # If we've moved away from the window's range, then we should no longer
    # consider it. No need for a while loop as we make this check at every iteration.
    if window[0] == idx - k
      window.shift()
    end

    # As we are looking for local maximums, we should remove all numbers
    # lower than the current value as they will no longer be considered over the current.
    # We start at the end of the windows array because window[0] always hosts the
    # largest value of the previous window.
    while window.length > 0 && nums[window[-1]] < value
      window.pop 
    end
    
    # Add the current value to the window. It may or may not be removed in the next iteration.
    # If the current value is greatest for its window, then it will become the the only value.
    window << idx
    
    # At the (k - 1)th index, we will be continuously establishing windows and will
    # start adding maximums. The maximum value of the window is always nums[window[0]].
    if idx >= k - 1
      maximums << nums[window[0]]
    end
  end
  maximums
end