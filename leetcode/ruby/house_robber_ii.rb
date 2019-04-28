# Cannot rob adjacent houses and the first and last houses are considered
# to be adjacent from one another.

def rob(nums)
  return 0 if nums.empty?
  return nums.first if nums.length == 1
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
  end
  [even, odd].max
end
p rob_helper([1,1])

# p rob([1,1,1])
# Requires two passes in this setup.

def rob2(nums)
  a = b = c = d = 0
  nums.each_with_index do |x, idx|
    if idx < nums.length - 1
      a, b = b, [a + x, b].max
    end
    if idx > 0
      c, d = d, [c + x, d].max
    end
  end
  [0, b, d].max
end
