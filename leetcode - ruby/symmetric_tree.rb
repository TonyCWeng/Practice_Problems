class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_symmetric(root)
  # We can return early if the root itself is nil (as it should not have left/right)
  # or if both its left and right adjacent nodes are nil.
  return true if root.nil? || root.left.nil? && root.right.nil?
  # Use XOR to determine if either just the right or left node is nil,
  # as that would signify an asymmetric tree.
  return false if root.left.nil? ^ root.right.nil?
  left_stack = [root.left]
  right_stack = [root.right]

  # The idea is to always approach each depth of the tree, adding both the
  # leftmost and rightmost nodes in each pass until we have visited and
  # adding their child nodes to their respective queues. We make sure that
  # each node has their corresponding value match their mirrored node before
  # adding their respective left/right nodes to the left/right queues.
  until left_stack.empty? && right_stack.empty?
    left_node = left_stack.pop
    right_node = right_stack.pop

    # If both the left node and right node are nil, then there are no
    # children to add to the queue. As they are equal to each other, move on.
    if left_node.nil? && right_node.nil?
      next
      # Alternative, not use xor and use safe navigation operator (&.) on val.
      # left_node&.val != right_node&.val

    elsif left_node ^ right_node
      # If only the left/right node is nil, then the tree is not symmetric.
      return false
      # if the left and right nodes have different values, then they are not
      # symmetric.
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
