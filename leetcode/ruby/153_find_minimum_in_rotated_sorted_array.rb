def find_min(nums)
  left = 0
  right = nums.length - 1
  while left < right
    mid = (left + right) / 2
    # If the rightmost value is greater than mid, then we know that all the
    # numbers between are also greater, and thus cannot be the minimum.
    # So we set the current mid as the greatest value.
    if nums[mid] < nums[right]
      right = mid
    else
      # If the midpoint is greater than the endpoint, then all the values from
      # the left to midpoint must be greater as well. So we remove that half
      # of the array and search onwards.
      left = mid + 1
    end
  end
  # we return when left == right.
  nums[left]
end

# Time Complexity: O(log n).
