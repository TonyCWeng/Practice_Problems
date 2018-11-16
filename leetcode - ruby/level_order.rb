class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def level_order(root)
  return [] if root.nil?
  current_level = [root]
  values = [[root.val]]

  until current_level.empty?
    next_level = []
    current_level.each do |node|
      next_level << node.left if node.left
      next_level << node.right if node.right
    end
    values << next_level.map(&:val) unless next_level.empty?
    current_level = next_level
  end
  values
end
