class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_symmetric(root)
  return true if root.nil? || root.left.nil? && root.right.nil?
  return false if root.left.nil? ^ root.right.nil?
  left_stack = [root.left]
  right_stack = [root.right]

  until left_stack.empty? && right_stack.empty?
    left_node = left_stack.pop
    right_node = right_stack.pop

    if left_node.nil? && right_node.nil?
      next
    elsif left_node ^ right_node
      return false
    elsif left_node.val != right_node.val
      return false
    else

      left_stack.push(left_node.left)
      left_stack.push(left_node.right)

      # As we are checking for both sides to be mirrored copies of each
      # other, we need to add the right node before the left.
      right_stack.push(right_node.right)
      right_stack.push(right_node.left)
    end
  end
  true
end
