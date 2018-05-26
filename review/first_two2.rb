# Find the first two numbers in an array whose product is 20.
# What is the time complexity?

def first_two(arr, target)
  cache = []
  arr.each_with_index do |x, idx|
    cache[idx] = x
    other_number = (target / x)
    if other_number.is_a?(Integer)
      if cache.detect { |y| y == other_number }
        return [other_number, x]
      end
    end
  end
  print "There are no two numbers that multiply to ##{target}"
end

p first_two([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 20)
