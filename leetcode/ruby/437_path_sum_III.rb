def path_sum(root, sum)
  paths = 0
  path_sum_helper(root, sum, @paths)
  paths
end

def path_sum_helper(root, sum, paths)
  return nil if root.nil?
  path_taken(root, sum, paths)
  path_sum_helper(root.left, sum, paths)
  path_sum_helper(root.right, sum, paths)
end

def path_taken(root, sum, paths)
  return nil if root.nil?
  if root.val == sum
    paths += 1
  end
  path_taken(root.left, sum - root.val, paths)
  path_taken(root.right, sum - root.val, paths)
end

def path_sum(root, sum)
  @paths = 0
  def path_sum_helper(root, sum)
    return nil if root.nil?
    path_taken(root, sum)
    path_sum_helper(root.left, sum)
    path_sum_helper(root.right, sum)
  end

  def path_taken(root, sum)
    return nil if root.nil?
    if root.val == sum
      @paths += 1
    end
    path_taken(root.left, sum - root.val)
    path_taken(root.right, sum - root.val)
  end

  path_sum_helper(root, sum)
  @paths
end
