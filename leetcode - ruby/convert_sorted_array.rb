class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def sorted_array_to_bst(nums)
  return nil if nums.empty?
  mid_point = nums.length / 2
  root = TreeNode.new(nums[mid_point])
  root.left = sorted_array_to_bst(nums[0...mid_point])
  root.right = sorted_array_to_bst(nums[mid_point+1..-1])
  root
end
p sorted_array_to_bst([-10,-3,0,5,9])
