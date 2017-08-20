#Problem 1: You have array of integers. Write a recursive solution to find the
#sum of the integers.

def sum_recur(array)
end

#Problem 2: You have array of integers. Write a recursive solution to determine
#whether or not the array contains a specific value.

def includes?(array, target)
end

# Problem 3: You have an unsorted array of integers. Write a recursive solution
# to count the number of occurrences of a specific value.

def num_occur(array, target)
end

# Problem 4: You have array of integers. Write a recursive solution to determine
# whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
end

# Problem 5: You have array of integers. Write a recursive solution to determine
# if the array is sorted.

def sorted?(array)
end

# Problem 6: Write a recursive function to reverse a string. Don't use any
# built-in #reverse methods!

def reverse(string)
  return string if string.length == 0
  string.last + reverse(string[0...-1])
end

#Digital root. sum the digits of a positive integer. If the num is >= 10,
# do it again. Do not use string conversion.

def digital_root(num)
  return num if num < 10
  digital_root((num % 10) + (num / 10))
end
