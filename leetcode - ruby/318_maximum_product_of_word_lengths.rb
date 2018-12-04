
# def max_product(words)
#   words = words.sort_by(&:length).reverse
#   binarys = words.map { |x| convert_word_to_binary(x) }
#
#   max = 0
#   words.each_with_index do |a, i|
#     #
#     next if a.length * a.length <= max
#
#     words[i+1..-1].each_with_index do |b, j|
#       next if (binarys[i] & binarys[i+1+j]).nonzero?
#       max = [ max, a.length * b.length ].max
#     end
#   end
#   max
# end

def convert_word_to_binary(word)
  num = 0
  word.chars.each do |char|
    num |= 1 << (char.ord - 'a'.ord)
  end
  num
end
a = ['apple', 'lcd', 'tam']

require 'set'
# Time limit exceeded.
def max_product2(words)
  max = 0
  words = words.sort_by {|x| x.length }.reverse
  unique_counts = words.map { |word| unique_chars(word) }
  words.each_with_index do |word, i|
    next if (word.length * word.length) <= max
    words[i+1..-1].each_with_index do |word2, j|
      if max < word.length * word2.length && unique_counts[i] + unique_counts[i + 1 + j] == unique_chars(word + word2)
        max = word.length * word2.length
      end
    end
  end
  max
end

def unique_chars(word)
  set = Set.new
  word.chars.each do |char|
    set.add(char)
  end
  set.length
end
p max_product2(["eae","ea","aaf","bda","fcf","dc","ac","ce","cefde","dabae"])
