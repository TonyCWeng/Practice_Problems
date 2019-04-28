def makesquare(nums)
  # Need a minimum of 4 sticks to make a square.
  return false if nums.length < 4
  perimeter = nums.inject(0, :+)
  # We return early if we are unable to create a square using all of the
  # matchsticks. That is, if the sum of all matchstick lengths are not
  # perfectly divisable by 4.
  return false unless perimeter % 4 == 0
  ideal_side_length = perimeter / 4
  # We return early if any stick is longer than the ideal side length.
  # as we would be unable to craft 4 equal length sides.
  return false if nums.any? { |x| x > ideal_side_length }

  completed_sides = 0
  # By reverse sorting the available numbers, we ensure that the largest
  # stick can be properly fitted in. If we had the sticks sorted from
  # smallest to largest, then we end up in a scenario where we use up
  # the smallest sticks to create a side and are unable to compete the
  # remaining sides with the larger sticks.
  unused_nums = nums.sort.reverse
  while completed_sides < 4
    next_set = make_side(unused_nums, ideal_side_length)
    sum = next_set.inject(0, :+)
    if sum % ideal_side_length == 0
      completed_sides += 1
    else
      return false
    end
    unused_nums = next_set
  end
  completed_sides == 4
end

# Helper method that finds sticks to add up to the side length.
# It also serves to remove the used sticks from the nums array.
def make_side(unused_nums, ideal_side_length)
  current_side_length = 0
  i = 0
  used_nums = []
  while i < unused_nums.length
    if current_side_length + unused_nums[i] <= ideal_side_length
      current_side_length += unused_nums[i]
      used_nums << unused_nums[i]
    end
    i += 1
  end
  p used_nums
  used_nums.each do |num|
    unused_nums.delete_at(unused_nums.index(num))
  end
  unused_nums
end
p makesquare([5,5,5,5,4,4,4,4,3,3,3,3])
