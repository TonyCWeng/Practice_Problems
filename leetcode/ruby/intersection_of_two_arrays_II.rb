
def intersect(nums1, nums2)
  intersection = []
  nums1.each do |num|
    index = nums2.find_index(num)
    if index
      intersection << num
      nums2.delete_at(index)
    end
  end
  intersection
end

# p intersect([1, 2, 3, 4, 5, 1],[1, 21, 3, 14, 55, 1])
# Time Complexity: O(m * n), where m is the length of nums1 and n is the
# length of nums2, as we are looping through nums1 and each time, we are
# calling find_index on nums2, which is a linear operation.
# Space Complexity: In the worst case, either all of the nums in nums1 or
# nums2 are duplicates. So the lesser of O(m) or O(n).

def intersect2(nums1, nums2)
  counts1 = num_counts(nums1)
  counts2 = num_counts(nums2)

  intersection = []
  counts1.each do |k, v|
    if counts2.key?(k)
      times = [v, counts2[k]].min
      intersection.concat([k] * times)
    end
  end
  intersection
end

def num_counts(nums)
  counts = {}
  nums.each do |num|
    if counts[num].nil?
      counts[num] = 1
    else
      counts[num] += 1
    end
  end
  counts
end
# Time Complexity: O(2n + m) => O(n + m), where n is the length of nums1 and m
# is the length of nums2. 2n because we first loop through nums1 and in the
# worst case scenario, we loop through a counts1 that is equal in length to n.
# Space Complexity: O(n + m + (m or n)) => O(n + m). As we are creating
# a hash of m and n, at worst. And the intersection is the lesser of n or m
# in size at worst.
p intersect2([1, 2, 3, 4, 5, 1],[1, 21, 3, 14, 55, 1])
