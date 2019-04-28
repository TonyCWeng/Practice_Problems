# Given a non-empty array of duplicates, require the only integer value
# that is unique.
require 'set'

def single_number(nums)
  counts = {}
  nums.each do |num|
    if counts[num].nil?
      counts[num] = 1
    else
      counts[num] += 1
    end
  end

  counts.each do |k, v|
    return k if v == 1
  end
end

# XOR: x ^ x = 0 And x ^ 0 = 0, so all duplicates will eventually cancel out and return
# the single unique value in question.
def single_number(nums)
  nums.reduce(:^)
end

def single_number(nums)
  res = 0
  nums.each do |num|
    res ^= num
  end
  res
end

# using sets
def single_number(nums)
  set = nums.to_set
  (set.to_a.inject(:+) * 2) - nums.inject(:+)
end

def single_number(nums)
  set = Set.new
  nums.each do |num|
    if set.include?(num)
      set.delete(num)
    else
      set.add(num)
    end
  end
  set.to_a.first
end

# p single_number([1, 1, 2, 2, 3, 4, 3])
