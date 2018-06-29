require 'set'

class Node
  attr_accessor :name, :children

  def initialize(name)
    # Using a set prevents any issue where we add the same node to children
    @children = Set.new
    @name = name
  end

  def to_s
    @name
  end
end

class Graph
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def add_edge(parent_node, child_node)
    parent_node.children << child_node
  end
end

def topological_sort

end
