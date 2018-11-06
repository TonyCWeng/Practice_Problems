def contains_nearby_almost_duplicate(nums, k, t)
  nums.each_with_index do |value, idx|
    start_idx = idx > k ? idx - k : 0
    end_idx = [nums.length, idx + k + 1].min
    while start_idx < end_idx
      if idx != start_idx && (value - nums[start_idx]).abs <= t
        return true
      end
      start_idx += 1
    end
  end
  false
end

p contains_nearby_almost_duplicate([1,5,9,1,5,9], 2, 3)

def contains_nearby_almost_duplicate(nums, k, t)
  buckets = {}
  nums.each_with_index do |num, idx|
    bucketnum = num / t
    Range.new(bucketnum - 1, bucketnum + 1).each do |n|
      if buckets.key?(n) && (buckets[n] - num).abs <= t
        p [buckets[n], num, n]
      end
      return true if buckets.key?(n) && (buckets[n] - num).abs <= t
    end

    buckets[bucketnum] = num
    # We delete this bucket because it won't be in range for the next index
    # position. No longer in consideration.
    buckets.delete(nums[idx - k] / t) if idx >= k
  end
  false
end

p contains_nearby_almost_duplicate([10,25,19,111,50,91, 80, 78], 2, 3)
