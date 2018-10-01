
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

p intersect2([1, 2, 3, 4, 5, 1],[1, 21, 3, 14, 55, 1])
