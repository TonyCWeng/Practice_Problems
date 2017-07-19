def diagonal_difference(arr)
  len = arr.length

  left = 0
  right = 0
  arr.each_index do |x|
    arr.each_index do |y|
      left += arr[x][y] if x == y
      right += arr[x][y] if x + y == len - 1
    end
  end
  (left - right).abs
end

#done with a while loop
# def diagonal_difference(arr)
#   len = arr.length
#
#   left = 0
#   right = 0
#   x = 0
#   while x < len
#     y = 0
#     while y < len
#       left += arr[x][y] if x == y
#       right += arr[x][y] if x + y == len - 1
#       y += 1
#     end
#     x += 1
#   end
#   (left - right).abs
# end

a = [ [11, 2, 4],
[4, 5, 6],
[10, 8, -12]
]

p diagonal_difference(a)
