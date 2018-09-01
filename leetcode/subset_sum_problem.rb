# Using Dynamic Programming, write a function that takes in an array
# of numbers and a target value. Return true if it is possible for a subset
# of the numbers array to add up to the target value. Otherwise, return false

def subset_sum(nums, target_value)
  # We want to create a two dimensional Array
  cache = Array.new(nums.length) { Array.new(target_value + 1) }
  nums.length.times do |x|
    (0..target_value).each do |y|
      if y == 0
        cache[x][y] = true
        next
      end
      difference = y - nums[x]
      if difference == 1 && x == 1
        print cache[x - 1][y - 2]
      end
      if cache[x - 1][y] == true ||
         difference == 0 ||
         (difference > 0 && cache[x - 1][y - nums[x]] == true)
        cache[x][y] = true
      else
        cache[x][y] = false
      end
    end
  end
  p cache
  cache[nums.length - 1][target_value]
end

p subset_sum([1,2,3], 6)
