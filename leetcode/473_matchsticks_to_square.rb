def makesquare(nums)
  # Need a minimum of 4 sticks to make a square.
  return false if nums.length < 4
  perimeter = nums.inject(0, :+)
  return false unless perimeter % 4 == 0
  ideal_side_length = perimeter / 4
  side_lengths = [0, 0, 0, 0]
  length = nums.length

  def dfs(index, nums, length, side_lengths, ideal_side_length)
    # base case
    if index == length
      return side_lengths.all? { |x| x == ideal_side_length }
    end
    i = 0
    while i < 4
      if side_lengths[i] + nums[index] <= ideal_side_length
        side_lengths[i] += nums[index]
        if dfs(index + 1, nums, length, side_lengths, ideal_side_length)
          return true
        end
        # If the attempt doesn't pan it, revert it
        side_lengths[i] -= nums[index]
      end
      i += 1
    end
    false
  end
  dfs(0, nums, length, side_lengths, ideal_side_length)
end

p makesquare([3,3,3,3,4])
