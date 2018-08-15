class TrieNode
  attr_accessor :children, :is_complete
  def initialize(children = {}, is_complete = false)
    # hashmap containing any potential letters branching from it
    @children = children
    # boolean to denote whether or not it completes a word
    @is_complete = is_complete
  end
end

class Trie
  def initialize
    @root_node = TrieNode.new
  end

  def insert(word)
    current_node = @root_node
    i = 0
    while i < word.length
      node = current_node.children.key(word[i])
      if node.nil?
        node = TrieNode.new
        current_node.children.store(word[i], node)
      end
      current_node = node
      i += 1
    end
    current_node.is_complete = true
  end
end
new_trie = Trie.new
new_trie.insert("apple")
p new_trie
