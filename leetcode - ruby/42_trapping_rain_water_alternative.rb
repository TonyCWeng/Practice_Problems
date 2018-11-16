# Given n non-negative integers representing an elevation map where the
# width of each bar is 1, compute how much water it is able to trap after
# raining.

# The first and last heights are unable to contain rain water, as they
# would lack a secondary surrounding wall.
def trap(heights)
  left_wall, right_wall = 0, 0
  left_idx = 0
  right_idx = heights.length - 1
  trapped_water = 0

  while left_idx < right_idx
    if heights[left_idx] < heights[right_idx]
      if heights[left_idx] >= left_wall
        left_wall = heights[left_idx]
      else
        trapped_water += left_wall - heights[left_idx]
      end
      left_idx += 1
    else
      if heights[right_idx] >= right_wall
        right_wall = heights[right_idx]
      else
        trapped_water += right_wall - heights[right_idx]
      end
      right_idx -= 1
    end
  end
  trapped_water
end

p trap([0,1,0,2,1,0,1,3,2,1,2,1]) == 6
p trap([5,2,1,2,1,5]) == 14
p trap([4,4,4,7,1,0]) == 0
