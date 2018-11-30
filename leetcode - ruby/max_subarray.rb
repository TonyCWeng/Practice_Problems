def max_sub_array(nums)
  max_sum = nums.first
  current_sum = nums.first
  nums[1..-1].each do |num|
    if current_sum < 0 && num > current_sum
      current_sum = num
    else
      current_sum = current_sum + num
    end
    max_sum = current_sum if current_sum > max_sum
  end
  max_sum
end

p max_sub_array([-10, 5, -1, 0, 10, -5, 20, -1])

def max_sub_array2(nums)
  current_sum = max_sum = nums.first
  nums[1..-1].each do |num|
    current_sum = [current_sum + num, num].max
    max_sum = [current_sum, max_sum].max
  end
  max_sum
end

p max_sub_array2([-10, 5, -1, 0, 10, -5, 20, -1])
