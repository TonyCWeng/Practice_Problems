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
