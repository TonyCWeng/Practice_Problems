# Given a sorted array of integers, return the length of the array having
# all duplicate values "removed" in-place with O(1) extra memory.
# Note: The duplicates are still found in the array, but outside of the length
# of unique values.
def remove_duplicates(nums)
  return 0 if nums.empty?
  i = 1
  unique_count = 0
  while i < nums.length
    if nums[i] > nums[i - 1]
      unique_count += 1
      # If i = 1 and nums[i] is different from nums[0], then its place
      # effectively does not get swapped out. We do rearrange the array when
      # non-unique values get passed by. Thus, everything is done in place.
      nums[unique_count] = nums[i]
    end
    i += 1
  end
  # the zeroth value is always going to be unique, it's the ones that come
  # after that may not be. That said, it has not yet been added to the unique
  # count (as we began at index 1).
  unique_count + 1
end

p remove_duplicates([1,1,1,2])
