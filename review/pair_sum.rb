require 'set'
# Given an array of integers, return all pairs that sum to a target value

def pair_sum(arr, target)

  pairs = []
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      pairs << [num1, num2] if num1 + num2 == target && idx1 != idx2
    end
  end
  pairs
end

def pair_sum(arr, target)
  seen = Set.new
  pairs = Set.new

  arr.each do |num|
    target = k - num
    if seen.include?(target)
      pairs.add([[num, target].min, [num, target].max])
    end
    see.add(num)
  end
  pairs
end

# Set.add and Set.include? are methods with a time complexity of O(1)
