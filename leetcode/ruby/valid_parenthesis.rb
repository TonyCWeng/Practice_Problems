def is_valid(s)
  valid_pairs = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }
  open_brackets = []
  s.chars.each do |char|
    if valid_pairs.keys.include?(char)
      open_brackets.unshift(char)
    else
      return false if open_brackets.empty?
      return false unless valid_pairs[open_brackets.shift] == char
    end
  end
  open_brackets.empty?
end

# LIFO, as the most recent open bracket is the one we seek to reunite
# with its pair.
# We don't actually need both return false statements. We can pop from an empty
# array without hassle.
p is_valid('{[()]}') == true
p is_valid('([)]') == false
p is_valid('((') == false
p is_valid('[()[]{}]') == true

def is_valid2(string)
  valid_pairs = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }
  left_brackets = []
  string.each_char do |char|
    # The string should only be containing left and right parentheses.
    # The if conditional accumulates left halves. The else attempts to match
    # the char with the latest left_bracket. If they are not a pair, then we
    # have detected an invalid parenthesis.
    if valid_pairs.keys.include?(char)
      left_brackets << char
    else
      return false unless valid_pairs[left_brackets.pop] == char
    end
  end
  left_brackets.empty?
end

# We know that the left half of a valid parenthesis must always come first.
# In order for a parenthesis to be valid, there is a LIFO requirement in that
# the most recently left-half found is the parenthesis we must complete.
# Popping/shifting in the conditional causes a permanent mutation, so if we
# encounter a character that is NOT a left-half, we must see if it completes
# our most recent left-half.
# if we do not have any left_brackets by the end, then we know that we are safe.