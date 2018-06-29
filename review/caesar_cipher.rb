def caesar_cipher(str, shift)
  alphabet = ("a".."z").to_a
  shifted = alphabet.rotate(shift)
  cipher = Hash[alphabet.zip(shifted)]
  encoded = []
  str.each_char do |el|
    if cipher[el]
      encoded << cipher[el]
    else
      encoded << el
    end
  end
  encoded.join("")
end

# new solution
def caesar_cipher(str, shift)
  letters = ("a".."z").to_a
  encoded_message = ""

  str.each_char do |char|
    if char == " "
      encoded_message << " "
      next
    end
    old_idx = letters.find_index(char)
    new_idx = (old_idx + shift) % 26
    encoded_message << letters[new_idx]
  end
  encoded_message
end

p caesar_cipher("abcde", 4)
p "abc" << "d"
