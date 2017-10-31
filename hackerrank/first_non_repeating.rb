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

p non_repeating2("apple")
