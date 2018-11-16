
def merge(nums1, m, nums2, n)
  total_length = m + n
  idx1 = 0
  idx2 = 0
  while idx2 < n
      if idx1 >= m
          nums1[idx1] = nums2[idx2]
          idx2 += 1
      elsif nums1[idx1] > nums2[idx2]
          nums1.insert(idx1, nums2[idx2])
          idx2 += 1
          m += 1
      end
      idx1 += 1
  end
    # Remove the extra 0's.
  until nums1.length == total_length
    nums1.pop
  end
end
