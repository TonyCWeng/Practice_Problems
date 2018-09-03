#Problem 1: You have array of integers. Write a recursive solution to find the
#sum of the integers.

def sum_recur(array)
  #base case
  return 0 if array.empty?
  #iterative step
  array.first + sum_recur(array[1..-1])
end

# iterative
def sum_array(arr)
  sum = 0
  arr.each do |x|
    sum += x
  end
  sum
end

# Sum_recur would have a linear time complexity, as we are iterating through
# Each element of the input array.


#Problem 2: You have array of integers. Write a recursive solution to determine
#whether or not the array contains a specific value.

def includes?(array, target)
  return false if array.empty?
  return true if array.first == target
  includes?(array[1..-1])
end

# iterative
def include?(arr, target)
  return false if arr.empty?
  arr.each do |x|
    return true if x == target
  end
  false
end

# Problem 3: You have an unsorted array of integers. Write a recursive solution
# to count the number of occurrences of a specific value.

def num_occur(array, target)
  return 0 if array.empty?
  occurrence = array.first == target ? 1 : 0
  occurrence + num_occur(array.drop(1))
end

def num_occurrences(nums, value)
  return 0 if nums.empty?
  occurrences = 0
  nums.each do |x|
    occurrences += 1 if x == value
  end
  occurrences
end

# Problem 4: You have array of integers. Write a recursive solution to determine
# whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  return false if array.length <= 1
  return true if array[0] + array[1] == 12
  add_to_twelve?(array[1..-1])
end

# Problem 5: You have array of integers. Write a recursive solution to determine
# if the array is sorted.

def sorted?(array)
  return true if array.length <= 1
  return false if array[0] > array[1]
  sorted?(array.drop(1))
end

def sorted2?(arr)
  return true if array.length < 2
  i = 0
  while i < arr.length - 1
    if arr[i] > arr[i + 1]
      return false
    end
    i += 1
  end
  true
end

# Problem 6: Write a recursive function to reverse a string. Don't use any
# built-in #reverse methods!

def reverse(string)
  return string if string.empty?
  string.last + reverse(string[0...-1])
end

def reverse2(string)
  reversed = ''
  string.each_char do |char|
    reversed = char + reversed
  end
  reversed
end

#Digital root. sum the digits of a positive integer. If the num is >= 10,
# do it again. Do not use string conversion.

def digital_root(num)
  return num if num < 10
  digital_root((num % 10) + (num / 10))
end
