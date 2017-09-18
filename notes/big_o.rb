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
