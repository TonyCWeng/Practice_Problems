def max_sliding_window(nums, k)
  return nil if nums.length.zero?
  i = 0
  maximums = []
  while i <= nums.length - k
    maximums << nums[i, k].max
    i += 1
  end
  maximums
end
a = [1,20,3,40,5,6,7,8,100]
p max_sliding_window(a, 3)
