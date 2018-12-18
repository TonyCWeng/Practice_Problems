def product_except_self(nums)
  sum = nums.inject(1, :*)
  nums.map! { |x| sum / x }
end

# Pros: O(1) space complexity, linear time Complexity
# Cons: Uses division (oops)

# Appears that we can use linear space complexity for the output?
def product_except_self(nums)
  products = Array.new(nums.length, 1)
  running_product = 1

  # This loop multiplies product up to each number (but not including,
  # as we multiply products[idx] before updating the running_product with
  # the current value).
  nums.length.times do |idx|
    products[idx] *= running_product
    running_product *= nums[idx]
  end
  i = nums.length - 1
  running_product = 1
  until i < 0
    products[i] *= running_product
    running_product *= nums[i]
    i -= 1
  end
  products
end

p product_except_self([1,2,3,4])
