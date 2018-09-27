
def rotate(nums, k)
  rotated = []
  nums.each_with_index do |x, idx|
    rotated[(idx + k) % nums.length] = x
  end
  rotated
end
p rotate([1,2,3,4,5,6,7], 3)

def rotate_in_place(nums, k)
  k.times do
    single_right_rotation(nums)
  end
  nums
end

def single_right_rotation(arr)
  length = arr.length
  i = 0
  temp = arr[length - 1]
  while i < length
    arr[i], temp = temp, arr[i]
    i += 1
  end
  arr
end

def single_right_rotation2(arr)
  temp = arr[-1]
  arr.each_index do |idx|
    arr[idx], temp = temp, arr[idx]
  end
  arr
end

def rotate2(nums, k)
  nums.rotate(k)
end

def rotate3(nums, k)
  k.times do
    nums.unshift(nums.pop)
  end
  nums
end
