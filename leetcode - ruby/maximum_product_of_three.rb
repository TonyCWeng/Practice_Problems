def maximum_product(nums)
  largest_product_of_three = nums[0] * nums[1] * nums[2]
  largest_product_of_two = nums[0] * nums[1]
  smallest_product_of_two = nums[0] * nums[1]
  largest_number = [nums[0], nums[1]].max
  smallest_number = [nums[0], nums[1]].min
  nums[2..-1].each do |x|
    # Need to start with the largest product of three, as it is potentially
    # the product of largest_product_of_two / smallest_product_of_two.
    largest_product_of_three = [largest_product_of_three, x * largest_product_of_two, x * smallest_product_of_two].max
    largest_product_of_two = [largest_product_of_two, x * largest_number, x * smallest_number].max
    smallest_product_of_two = [smallest_product_of_two, x * largest_number, x * smallest_number].min

    largest_number = [largest_number, x].max
    smallest_number = [smallest_number, x].min
  end
  largest_product_of_three
end

# time complexity: O(nlog n). It's actually much faster than the linear
# answer, however. Time complexity only tells part of the story. The
# number of calculations is so large that it dwarfed the input size in practice.
def maximum_product(nums)
  nums = nums.sort
  largest_num = nums[-1]
  min_two = nums[0] * nums[1]
  max_two = nums[-2] * nums[-3]
  [largest_num * min_two, largest_num * max_two].max
end

p maximum_product([-5,-4,-3,-2,-1])

# Heavy on the variables, but the time complexity is: O(n)
# Space Complexity is O(1). (set number of variables made every time)

# Linear, but unlike the first linear solution, we end up doing a whole lot less work.
def maximum_product3(nums)
  smallest, second_smallest = 1000, 1000
  largest, second_largest, third_largest = -1000, -1000, -1000
  nums.each do |x|
    if x >= largest
      third_largest = second_largest
      second_largest = largest
      largest = x
    elsif x >= second_largest
      third_largest = second_largest
      second_largest = x
    elsif x >= third_largest
      third_largest = x
    end

    if x <= smallest
      second_smallest = smallest
      smallest = x
    elsif x <= second_smallest
      second_smallest = x
    end
  end
  [largest * smallest * second_smallest, largest * second_largest * third_largest].max
end
