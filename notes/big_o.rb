# Big O is used to describe the complexity/performance of an algorithm
# (usually the best or average case scenario is considered).

# example 1
def sum_and_product(arr)
  sum = arr.inject(0, :+)
  # iterates through the array, so time complexity of n
  product = arr.reduce(1, :*)
  # also iterates through the entire array, so n.
  print "The sum of the array is #{sum}" + " and" + " the product is #{product}."
end
#print sum_and_product([1,2,3])

# time complexity: 2n + c (for the print statement)
# this reduces to O(n).

# ex 2
def print_pairs(arr)
  i = 0
  while i < arr.length
    j = 0
    while j < arr.length

      puts "#{arr[i]},#{arr[j]}"
      j += 1
    end
    i += 1
  end
end
print_pairs([1,2,3])

# ex 3
# given an array of strings of length n
# first, sort every string in the array
# then sort the array and return it

def double_sort(arr)
  sorted_strings = []
  arr.each do |string|
    sorted_strings << string.sort
  end
  #O(n * m * log m, where m is the length of the longest string)
  sorted_strings.sort
  # there are n * log n comparisons in this sort, but each string
  # comparisons takes m time to perform.
  # Therefore, calling .sort on an array of strings takes n * m log n
end
#Time complexity: O(  n*m log m + n*m log n)
#counterintuitive
