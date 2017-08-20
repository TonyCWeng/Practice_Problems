# Quicksort Overview

- Quicksort traditionally uses the first element of an array as a pivot.

- Base case: return if length of array <= 1.
- How it works: Move all numbers less than or equal to pivot value to the left array. Move all numbers larger than pivot value to the right.
- Eventual return: left_sorted + [pivot] + right_sorted
- time complexity of nlog n on average, worst case is n ** 2 (if performed on a presorted array).

** Should look up garbage collection in ruby.

def self.sort1(array)
  return array if array.length <= 1

  pivot = array.shift
  left, right = array.partition { |el| pivot <= el }
  sort1(left) + pivot + sort1(right)
end

- In place quicksort = constant space complexity
