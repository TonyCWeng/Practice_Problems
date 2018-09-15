# Given an array that is definitely a mountain, return the index (i) of its
# peak. A peak is defined as the position of the array (A) in which
# A[0] < A[i] < A[A.length - 1]
# Ex. [1, 2, 3, 2, 1] would return 2, as 3 is its peak value.

def peak_index_in_mountain_array(arr)
  arr.length.times do |i|
    return i if arr[i] > arr[i + 1]
  end
end

# As the array is a "mountain" with a single peak, we will have found
# the peak when the the values are no longer increasing in size.
# Linear time complexity, as this peak value will, at worst, be found at
# the tail end of the array.
