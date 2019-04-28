# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def postorder_traversal(root)
  visit_order = []
  postorder_helper(root, visit_order)
  visit_order
end

# def postorder_helper(root, visited)
#   postorder_helper(root.left) if root.left
#   postorder_helper(root.right) if root.right
#   visited << root.val
# end

def postorder_helper(root, visit_order)
  if root
    postorder_helper(root.left, visit_order)
    postorder_helper(root.right, visit_order)
    visit_order << root.val
  end
end

# Iterative
def iterative_postorder_traversal(root)
  stack = []
  res = []
  current = root
  until current.nil? && stack.nil?
    if current
      stack << current.right if current.right
      stack << current
      current = current.left
    else
      res << current.val
      current = nil
    end
  end
  res
end

# Another iterative approach
def iterative_postorder_traversal2(root)
  return [] if root.nil?
  stack = [root]
  order = []
  until stack.empty?
    current = stack.pop
    order << current.val
    stack << current.left if current.left
    stack << current.right if current.right
  end
  traversal.reverse
end
