# Identify the longest subarray length that is a mountain. A mountain is defined
# as having a peak point and descends from both sides from there.
# It should have a minimum length of 3 and the function should return
# 0 if there is no mountain present.

def longest_mountain(arr)
  return 0 if arr.length == 0
  mountain_cache = Array.new(arr.length, 0)
  idx = 0
  while idx < arr.length - 2
    mountain_cache[idx] = identify_mountain(arr, idx)
    mountain_cache[idx] == 0 ? idx += 1 : idx = idx + mountain_cache[idx] - 1
  end
  mountain_cache.max
end

def identify_mountain(arr, start_idx)
  idx = start_idx
  return 0 unless arr[idx] < arr[idx + 1]
  while idx + 2 < arr.length && (arr[idx] < arr[idx + 1])
    idx += 1
  end

  idx2 = idx
  return 0 unless arr[idx2] > arr[idx2 + 1]

  while idx2 + 1 < arr.length && arr[idx2] > arr[idx2 + 1]
    idx2 += 1
  end
  arr[start_idx..idx2].length
end
