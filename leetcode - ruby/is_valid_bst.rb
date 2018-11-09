def is_valid_bst(root)
  verify_node(root, nil, nil)
end

def verify_node(node, min = nil, max = nil)
  # return true if there are no more nodes to verify
  return true if node.nil?
  # we return false if node.val is out of bounds
  return false if max && node.val >= max
  return false if min && node.val <= min
  # when we verify the left node, we set the new maximum value to be
  # the current node, which will always be less than the previous max.
  # when we verify node.right, we set the new minimum to be the current node
  # as no node right of it should be greater and it is guaranteed to be
  # a larger minimum than the previous (as we continue to go right).
  verify_node(node.left, min, node.val) &&
  verify_node(node.right, node.val, max)
end
