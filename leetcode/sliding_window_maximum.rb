def max_sliding_window(nums, k)
  return [] if nums.length.zero?
  i = 0
  maximums = []
  current_window = []

  while i < nums.length
    # remove the front most element if it is out of the current window's
    # index range
    if !current_window.empty? && current_window[0] == i - k
      current_window.shift
    end

    # starting from the tail end, remove the indices that point to values lower
    # than the current index in consideration. We start at the end as it is
    # possible for elements later in the array to be smaller than the first
    # element.
    p [nums[i], current_window]
    while !current_window.empty? && nums[current_window[-1]] < nums[i]
      current_window.pop
    end

    current_window << i
    if i >= k - 1
      p [i, current_window]
      maximums << nums[current_window[0]]
    end
    i += 1
  end
  maximums
end

a = [1,3,1,2,0,5]
p max_sliding_window(a, 3)
