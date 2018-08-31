def makesquare(nums)
  perimeter = nums.inject(0, :+)
  return false unless perimeter % 4 == 0
  ideal_side_length = perimeter / 4
  used_sticks = Array.new(nums.length, false)
  completed_sides = 0
  i = 0
  current_side = 0
  while completed_sides < 4
    # escape if we are unable to finish a side by the time we get to the last
    # number in the array.
    return false if i > nums.length
    if current_side == ideal_side_length
      completed_sides += 1
      current_side = 0
      i = used_sticks.find_index { |x| x == false }
    end
      current_side += nums[i]
  end
end
