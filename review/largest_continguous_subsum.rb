require 'set'
# Given an array of integers (positive and negative), find the largest
# continguous subsum.


def lcs(array)
  return 0 if array.empty?
  current_sum = 0
  largest_sum = arr.first

  arr.each do |el|
    current_sum += el
    largest_sum = current_sum if largest_sum < current_sum
    current_sum = 0 if current_sum < 0
    #reset the current sum if the subsum is negative. If it's 0, it's all good.
  end

  largest_sum
end

# Time Complexity: O(n) / linear
# Space Complexity: O(1) / constant

def uniq_subs(str)
  subs = Set.new
  str.length.times do |i|
    (i..str.length-1).each do |j|
      subs.add(str[i..j])
    end
  end
  subs
end

# Even with sets, it is O(n**3) time complexity, as slicing is a linear operation.
# Doing includes, however, would have pushed it to O(n**4)
