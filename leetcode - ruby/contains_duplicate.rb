# Write a function that determines whether or not an array of integers
# contains duplicate values. Return true if it does, otherwise false.
require 'set'
def contains_duplicate(nums)
  set = Set.new
  nums.each do |x|
    if set.include?(x)
      return true
    else
      set.add(x)
    end
  end
  false
end
p contains_duplicate([1, 2, 3, 2]) == true
