# Given an array of integers, return all pairs that sum to a target value
def pair_sum(arr, target)

  pairs = []
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      pairs << [num1, num2] if num1 + num2 == target && idx1 != idx2
    end
  end
  pairs
end
