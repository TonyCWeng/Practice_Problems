# Given n non-negative integers representing an elevation map where the
# width of each bar is 1, compute how much water it is able to trap after
# raining.

# Need two pointers for heights, the water contained is the lower of the

# def trap(elevation_map)
#   return 0 if elevation_map.all? { |x| x == 0}
#   trapped = 0
#   right_idx, right_height = nil, 0
#   left_idx = elevation_map.find_index { |x| x > 0 }
#   left_height = elevation_map[left_idx]
#   idx = left_idx + 1
#
#   while idx < elevation_map.length
#     current_height = elevation_map[idx]
#     if idx == left_idx + 1 && current_height >= left_height
#       left_height = current_height
#       left_idx = idx
#     elsif idx > left_idx + 1 && local_max?(idx, elevation_map)
#       right_height = current_height
#       right_idx = idx
#     end
#
#     if right_height >= left_height
#       trap_height = [left_height, right_height].min
#       elevation_map[(left_idx + 1)...right_idx].each do |x|
#         trapped += [trap_height - x, 0].max
#       end
#       left_height = right_height
#       left_idx = right_idx
#       right_height = 0
#     end
#     idx += 1
#   end
#   trapped
# end

# def local_max?(idx, elevation_map)
#   if idx + 1 == elevation_map.length
#     elevation_map[idx] > elevation_map[idx - 1]
#   else
#     elevation_map[idx] > elevation_map[idx - 1] &&
#     elevation_map[idx] > elevation_map[idx + 1]
#   end
# end

# def trap(elevation_map)
#   trapped = 0
#   right_idx, right_height = nil, 0
#   left_idx = elevation_map.find_index { |x| x > 0 }
#   left_height = elevation_map[left_idx]
#   idx = left_idx + 1
#
#   while idx < elevation_map.length
#     current_height = elevation_map[idx]
#     if idx == left_idx + 1 && current_height >= left_height
#       left_height = current_height
#       left_idx = idx
#       idx += 1
#       next
#     end
#
#     right_idx = find_right(idx, left_height, elevation_map)
#     break if right_idx.nil?
#     right_height = elevation_map[right_idx]
#     if right_height > 0
#       trap_height = [left_height, right_height].min
#       elevation_map[(left_idx + 1)...right_idx].each do |x|
#         trapped += [trap_height - x, 0].max
#       end
#       left_height = right_height
#       left_idx = right_idx
#       right_height = 0
#     end
#     idx = left_idx + 1
#   end
#   trapped
# end

def trap(elevation_map)
  trapped = 0
  right_idx, right_height = nil, 0
  left_idx = elevation_map.find_index { |x| x > 0 }
  return trapped if elevation_map.drop(left_idx+1).all? {|x| x == 0}
  left_height = elevation_map[left_idx]
  idx = left_idx + 1

  while idx < elevation_map.length
    current_height = elevation_map[idx]
    if idx == left_idx + 1 && current_height >= left_height
      left_height = current_height
      left_idx = idx
      idx += 1
      next
    end

    right_idx = find_right(idx, left_height, elevation_map)
    break if right_idx.nil?
    right_height = elevation_map[right_idx]

    if right_height > 0
      trap_height = [left_height, right_height].min
      elevation_map[(left_idx + 1)...right_idx].each do |x|
        trapped += trap_height - x
      end
      left_height = right_height
      left_idx = right_idx
      right_height = 0
    end
    idx = right_idx + 1
  end
  trapped
end

# We have two scenarios to consider: when the left boundary is <= the right
# boundary. And when the left boundary is taller than the right boundary.
# For the first case, we're looking for the index where the right height
# is >= to the left height. Otherwise, we will need to find the highest
# height that the array has to offer and set it as our right boundary.
# we also need that
def find_right(idx, left_height, elevation_map)
  right_idx = elevation_map[idx..-1].find_index { |x| x >= left_height }
  return right_idx + idx if right_idx
  elevation_map.drop(idx).each_with_index.sort.max.last + idx
end

p trap([0,1,0,2,1,0,1,3,2,1,2,1]) == 6
p trap([5,2,1,2,1,5]) == 14
p trap([4,4,4,7,1,0]) == 0
