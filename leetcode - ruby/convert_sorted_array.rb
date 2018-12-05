class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def sorted_array_to_bst(nums)
  mid_point = nums.length / 2
  current_node = TreeNode.new(nums[mid_point])
  left = mid_point - 1
  right = mid_point + 1
  current_left = current_right = current_node
  until left < 0 && right > nums.length - 1
    if left >= 0
      current_left.left = TreeNode.new(nums[left])
      current_left = current_left.left if current_left
      left -= 1
    end
    if right < nums.length
      current_right.right = TreeNode.new(nums[right])
      current_right = current_right.right if current_right
      right += 1
    end
  end
  current_node
end
p sorted_array_to_bst([-10,-3,0,5,9])
