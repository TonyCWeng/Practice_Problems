def makesquare(nums)
  perimeter = nums.inject(0, :+)
  return false unless perimeter % 4 == 0
  ideal_side_length = perimeter / 4
  completed_sides = 0
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
  used_nums.each do |num|
    unused_nums.delete_at(unused_nums.index(num))
  end
end
