def move_zeroes(nums)
  nonzero_idx = 0
  nums.each do |num|
    if num.nonzero?
      nums[nonzero_idx] = num
      nonzero_idx += 1
    end
  end
  zeroes_idx = nonzero_idx
  while zeroes_idx < nums.length
    nums[zeroes_idx] = 0
    zeroes_idx += 1
  end
  nums
end
