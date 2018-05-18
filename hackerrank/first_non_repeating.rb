# first the first non-repeating character in a string
# if there is no such character, return nil
def non_repeating(str)
  str.chars.find { |char| str.count(char) == 1 }
end

def non_repeating2(str)
  str.chars.each do |char|
    return char if str.count(char) == 1
  end
  nil
end

require 'set'
# .add? returns self if it successfully adds the item into the set,
# else, it will return nil
def non_repeating3(str)
  set = Set.new
  str.each_char do |char|
    return char unless set.add?(char)
  end
end

p non_repeating3("apple")
