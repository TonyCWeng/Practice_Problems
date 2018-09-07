#Given a string of a binary number, return its value in base 10.
def base2to10(binary_numstr)
  total = 0
  binary_str.reverse.each_char_with_index do |x, idx|
    total += x.to_i * (2 ** idx)
  end
  total
end
