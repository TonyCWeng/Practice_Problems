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
    #reset the current sum if the subsum is negative. If it's 0, I guess it doesn't matter
  end

  largest_sum
end
