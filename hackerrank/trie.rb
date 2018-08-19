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
  # Time complexity: O(m * n), where m is the average length of words
  # within the Trie and n is the number of words.
  def search(word)
    current_node = @root_node
    i = 0
    while i < word.length
      # first, find the node corresponding to the i-th character of the word.
      node = current_node.children[word[i]]
      if node.nil? && i < word.length - 1
        # we return false if we are unable to iterate through all the
        # characters of the word in question
        return false
      elsif i == word.length - 1 && node.is_complete
        # We return true if we've gone through the entire word and found
        # that it is considered a complete word.
        return true
      end
      # we set the current_node to the child node and continue iterating
      # through the word in question.
      current_node = node
      i += 1
    end
  end

  # If a given prefix exists in the Trie, then return true. Otherwise,
  # return false.
  def search_prefix(prefix)
    current_node = @root_node
    i = 0
    while i < prefix.length
      node = current_node.children[prefix[i]]
      if node.nil?
        return false
      end
      current_node = node
      i += 1
    end
    # we return true if we have successfully iterated through the prefix
    true
  end

  # More complicated.
  # First, delete
  def delete_word(word)
    recursive_delete(@root_node, word, 0)
  end

  # def recursive_delete(current_node, word, index)
  #   if index == word.length
  #     return false unless current_node.is_complete
  #     current_node.is_complete = false
  #     return current_node.children.empty?
  #   end
  #   char = word[index]
  #   node = current_node.children[word[index]]
  #   if node.nil?
  #     return false
  #   end
  # end

  def recursive_delete(current_node, word, index)
    if index == word.length - 1
      node = current_node.children[word[index]]
      if node.nil? || !node.is_complete
        return false
      else
        node.is_complete = false
        return
      end      
    end

    # while index < word.length
    #   node = current_node.children[word[index]]
    #   if node.nil? && index < word.length - 1
    #     return false
    #   elsif index == word.length - 1 && node.is_complete


  end
end
new_trie = Trie.new
new_trie.insert("apples")
new_trie.insert("b")
p new_trie.search("b")
p new_trie.search_prefix("app")
