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
      node = current_node.children[word[i]]
      if node.nil?
        node = TrieNode.new
        current_node.children.store(word[i], node)
      end
      current_node = node
      i += 1
    end
    current_node.is_complete = true
  end

  #If a word has already been entered into the Trie, then it should return
  # true.
  def search(word)
    current_node = @root_node
    i = 0
    while i < word.length
      node = current_node.children[word[i]]
      if node.nil? && i < word.length - 1
        # we return false if we are unable to iterate through all the
        # characters of the word in question
        return false
      elsif node.is_complete && i == word.length - 1
        # We return true if we've gone through the entire word and found
        # that it is considered a complete word.
        return true
      end
      current_node = node
      i += 1
    end
  end
end
new_trie = Trie.new
new_trie.insert("apples")
new_trie.insert("b")
p new_trie.search("b")
