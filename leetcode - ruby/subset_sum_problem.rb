# Using Dynamic Programming, write a function that takes in an array
# of numbers and a target value. Return true if it is possible for a subset
# of the numbers array to add up to the target value. Otherwise, return false

def subset_sum(nums, target_value)
  # We want to create a two dimensional Array of length x and width y.
  # X corresponds to the number of values in the array whereas y is the
  # target value + 1, as 0 is a guaranteed subset sum when the array is
  # empty.
  cache = Array.new(nums.length) { Array.new(target_value + 1) }

  # We iterate through the index values for nums and from 0 to the target value,
  # as we build up which we can possibly reach as we introduce mroe values of
  # the nums array. We choose to iterate through the index values as x
  # also corresponds to the cache indices of the same.
  nums.length.times do |x|
    (0..target_value).each do |y|
      if y == 0
        # We can always achieve a target value of 0.
        cache[x][y] = true
        next
      end
      # Introducing new values would never eliminate previously achieveable
      # target values and if the difference is 0, then we've reached our
      # target number in one step. Lastly, if the difference > 0 and
      # we are capable of reaching the remainder, then we set it to true.
      difference = y - nums[x]
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

p subset_sum([1, 2, 3], 6)
