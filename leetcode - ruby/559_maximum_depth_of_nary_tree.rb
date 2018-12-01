class TreeNode
  attr_accessor :val, :children
  def initialize(val)
    @val = val
    @children = []
  end
end

def max_depth(root)
  return 0 unless root
  return 1 unless root.children
  depth = 0
  stack = [root]
  while !stack.empty?
    next_stack = []
    while !stack.empty?
      node = stack.pop
      if node.children
        next_stack += node.children
      end
    end
    stack = next_stack
    depth += 1
  end
  depth
end

a = TreeNode.new(3)
b = TreeNode.new(4)
c = TreeNode.new(5)
d = TreeNode.new(1)
e = TreeNode.new(3)
f = TreeNode.new(1)
a.children << b
a.children << c
b.children << d
d.children << e
c.children << f

p max_depth(a)
