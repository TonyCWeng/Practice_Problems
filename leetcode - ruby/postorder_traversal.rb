# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def postorder_traversal(root)
  visited_nodes = []
  postorder_helper(root, visited)
  visited_nodes
end

def postorder_helper(root, visited)
  postorder_helper(root.left) if root.left
  postorder_helper(root.right) if root.right
  visited << root.val
end
