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
