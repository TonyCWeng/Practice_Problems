# Given arr1 and arr2, find the intersection of both sets.

def intersection(arr1, arr2)
  arr1.uniq.select { |el| arr2.include?(el) }
end

#code golf solution, but of n**2 time complexity
