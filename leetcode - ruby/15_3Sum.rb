# Approach will be as follows:
# 1) Sort the numbers
# 2) Iterate through the nums array in order before picking the other two
# 3) That way, we can have O(n**2) time complexity.
# 4) We then iterate through the rest of the array, selecting current_idx + 1
# and nums.length - 1 as our starting left and right indices for each iteration.
# As the numbers have been sorted, we can check their total sum and either
# move the left or right indices to better reach 0.
# left = idx + 1, right = nums.length - 1. For each Idx, we will continue
# trying out left and right
# 5) nums[idx] < nums[left] < nums[right]. As such, if nums[idx] is greater
# than 0, we know in advance that the 3sum cannot sum to 0 and that we are
# done because the remaining values are all above 0.
# 6) For indices after 0, we can check if the current index points to the
# same value as the previous and skip it if it does because we have already
# found all combinations summing to 0 with it.


def three_sum(nums)
  nums = nums.sort
  res = []
  nums.each_index do |idx|
    if nums[idx] > 0
      break
    end
    if idx > 0 && nums[idx]== nums[idx - 1]
      next
    end

    left, right = idx + 1, nums.length - 1
    total = nums[idx] + nums[left] + nums[right]
    while left < right
      if total > 0
        right -= 1
      elsif total < 0
        left += 1
      else

        res << [nums[idx], nums[left], nums[right]]
        # We want to move on from the current left and right values to avoid
        # duplicates. Both the while loop and final adjustment are required
        # for this matter.
        while left < right && nums[left] == nums[left + 1]
          left += 1
        end
        while left < right && nums[right] == nums[right + 1]
          right -= 1
        end
        left += 1
        right -= 1
      end
    end
  end
  res
end

puts three_sum([-4,-3,-2,-1,4,5,6,7])
