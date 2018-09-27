# If I were to use Ruby's built-in intersection method.
# def intersection(nums1, nums2)
#   nums1 & nums2
# end

# Problem has it tagged as binary search.
def intersection(nums1, nums2)
  nums2 = nums2.sort
  res = []
  nums1.each do |x|
    left = 0
    right = nums2.length
    while left <= right
      midpoint = (left + right) / 2
      if nums2[midpoint] == x && !res.include?(x)
        res << x
        break
      elsif x > nums2[midpoint]
        left = midpoint + 1
      else
        right = midpoint - 1
      end
    end
  end
  res
end

p intersection([1,2,3], [4,0,1,3])
