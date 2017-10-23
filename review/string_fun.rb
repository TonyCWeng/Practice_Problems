# reversing a string in ruby

# def string_reversal(str)
#   str.chars.inject { |x, y| y + x}
# end
# p string_reversal("stuff")

# in-place variant
def string_reversal2(str)
  i = 0
  mid = str.length / 2
  while i < mid
    str[i], str[str.length-1-i] = str[str.length-1-i], str[i]
    i += 1
  end
  str
end
print string_reversal2("abcde")

def word_reverse(str)
  reversed = []
  str.split(" ").each do |word|
    reversed << string_reversal2(word)
  end
  reversed.join(" ")
end

def reverse_word_order(str)
  reversed = []
  str.split(" ").each do |word|
    reversed.unshift(word)
  end
  reversed.join(" ")
end
p reverse_word_order("avenue queue")
