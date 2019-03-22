def longest_univalue_path(root)
  @longest = 0
  def longest_univalue_path_helper(node)
  return 0 unless node
  left_route = longest_univalue_path_helper(node.left)
  right_route = longest_univalue_path_helper(node.right)
  if node.left && node.left.val == node.val
    left = left_route + 1
  else
    left = 0
  end

  if node.right && node.right.val == node.val
    right = right_route + 1
  else
    right = 0
  end
  @longest = [@longest, left + right].max
  [left, right].max
  end

  longest_univalue_path_helper(root)
  @longest
end
