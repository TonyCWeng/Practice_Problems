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

# p is_valid('{[()]}') == true
# p is_valid('([)]') == false
# p is_valid('((') == false
p is_valid('[()[]{}]')