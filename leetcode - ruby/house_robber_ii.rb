# Cannot rob adjacent houses and the first and last houses are considered
# to be adjacent from one another.

def rob(nums)
  return 0 if nums.empty?
  return nums.first if nums.length == 1
  p nums[0...-1]
  p nums[1..-1]
  max_with_first = rob_helper(nums[0...-1])
  max_with_last = rob_helper(nums[1..-1])
  [max_with_first, max_with_last].max
end

def rob_helper(nums)
  even, odd = 0, 0
  nums.each_with_index do |num, idx|
    if idx % 2 == 0
      even = [even + num, odd].max
    else
      odd = [odd + num, even].max
    end
    # p [odd, even]
  end
  [even, odd].max
end
p rob_helper([1,1])

# p rob([1,1,1])
