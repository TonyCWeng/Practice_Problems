
def rob(nums)
  even_sum, odd_sum = 0, 0
  nums.each_with_index do |x, idx|
    if idx % 2 == 0
      even_sum = [even_sum + x, odd_sum].max
    else
      odd_sum = [odd_sum + x, even_sum].max
    end
    p ["current_house: #{x}", "even_sum: #{even_sum}", "odd_sum: #{odd_sum}"]
  end
  even_sum > odd_sum ? even_sum : odd_sum
end
# Even/Odd divide prevents us from accidentally robbing adjacent houses.
# That said, Even/Odd can take up each other's values in the event that the
# current house should not be robbed in favor of the previous route's higher
# yield.

p rob([1000, 0, 50, 1001, 3000, 10, 15])

# The same as the maximum subarray sum with no adjacent values.
