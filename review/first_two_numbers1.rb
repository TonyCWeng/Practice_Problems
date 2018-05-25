# Find the first two numbers in an array whose product is 20.
# What is the time complexity?

def first_two(arr, target = 20)
  sorted = arr.sort
  idx1 = 0
  idx2 = arr.length

  # While loop should end when idx1 == idx2
  while idx1 < idx2
    product = sorted[idx1] * sorted[idx2]
    case product
    when -1
      idx1 += 1
    when 0
      return [sorted[idx1], sorted[idx2]]
    when 1
      idx2 -= 1
    end
  end

  print "There is no viable combination of elements whose product is #{target}"
end

# Sorting an array is n log n
# while loop is n
# Time Complexity: O(n log n) + O(n)
# Issue: This wouldn't work with negative integers
