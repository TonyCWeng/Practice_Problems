# Given an array of integers greater than zero, find out if it is possible
# to split the array into two subarrays of equal sums.
# Print the two subarrays if it possible. Otherwise print 'Not possible to split'.

def equal_split?(nums)
  total = nums.inject(0, :+)
  return unless total % 2 == 0
  i = 0
  potential_half = 0
  while i < nums.length
    potential_half += nums[i]
    total -= nums[i]
    break if total == potential_half
    i += 1
  end
  if total == potential_half
    print [nums.take(i + 1), nums.drop(i + 1)]
  else
    print 'Not possible to split'
  end
end

equal_split?([1,2,3,6])
equal_split?([1,2,3,4])
