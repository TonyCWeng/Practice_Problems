# Given an array of non-negative integers, you are initially positioned at
# the first index of the array. Each element in the array represents
# your maximum jump length at that position.
# Determine if you are able to reach the last index.

def can_jump?(nums)
  length = nums.length
  idx = 0
  maximum_idx = nums[0]

  # While the index is within bounds and is less than or equal to the current
  # max index possible (reach). The secondary constraint is needed, as
  # we do not want to continue the while loop if we are unable to proceed
  # past a certain part of the array that is not the tail end.
  while idx < length && idx <= maximum_idx
    return true if idx == length - 1
    potential_max_idx = idx + nums[idx]
    # print [idx, potential_max_idx]
    maximum_idx = potential_max_idx if maximum_idx < potential_max_idx
    idx += 1
  end

  # Return false if we are unable to ever reach the last index.
  false
end

# p can_jump?([1, 1, 1, 0, 4])
p can_jump?([2, 0, 1, 1, 0, 4])
p can_jump?([1, 3, 0, 4, 1])
