def max_area(height)
  left = 0
  right = height.length - 1
  left_wall = height[left]
  right_wall = height[right]
  most_water = max_area_helper(height, left, right)
  until left >= right
    if height[left] < height[right]
      until height[left] > left_wall || left >= right
        left += 1
      end
      left_wall = height[left]
    else
      until height[right] > right_wall || left >= right
        right -= 1
      end
      right_wall = height[right]
    end
    current_water = max_area_helper(height, left, right)
    most_water = current_water if current_water > most_water
  end
  most_water
end
def max_area_helper(height, left, right)
  height = [height[left], height[right]].min
  height * (right - left)
end
# In my first attempt, I thought to be clever and try to calculate as few
# potential maximums by checking only when the container height increased
# (as the container width decreased with every iteration).
# However, all the constant work to identify the next greatest height.
# Also fairly verbose.

# A shorter, more succinct approach. We end up calculating the area at
# every go, but there's less work overall.
# The idea is to start with the widest possible container, working our way
# to a thinner area at every iteration.
def max_area(height)
  left = 0
  right = height.length - 1
  max = 0
  while left < right
    current = [height[left], height[right]].min * (right - left)
    max = current if current > max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max
end