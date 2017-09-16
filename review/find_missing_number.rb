# Assume non-negative numbers. Given two arrays, the first being a set of numbers,
# and the second containing all but a single element of the first (and
# scrambled), find the missing number.

def find_missing_number(arr1, arr2)

end

def find_missing_number2(arr1, arr2)
  #arr1.inject(:+) - arr2.inject(:+)
  #this solution did not cover the edge case where arr2 is empty.

  arr1.reduce(0, :+) - arr2.inject(0, :+)
end

p find_missing_number2([1], [])

# so how to approach this problem if there were negative numbers.
