def valid_ip
  nums = str.split(".")
  return false if nums.all? { |el| el.length == 3 }
  nums = nums.map(&:to_i)
  nums.all? { |num| num >= 0 && num <= 255 }
end

# textbook solution

def valid_ip?(str)
  return false unless str =~ /^\d+(\.\d+){3}$/
  #uses regex to test if there's numbers separated by . three times.
  #but it can be any number of digits between the .
  nums = str.split(".").map(&:to_i)
  nums.all? {|num| num >= 0 && num <= 255}
end

def sum_from_file(filename)
  #File.readlines = returns file lines in an array
  nums = File.readlines(filename)
             .select { |line| line[0] != "#" }
             .map(&:to_i)

  nums.inject(:+)
end

def shuffle(arr)
  new_arr = arr.dup
  array.each_index do |index|
    rand_index = index + rand(array.length - index)
    new_arr[index], new_array[rand_index] = new_array[rand_index], new_array[index]
  end
  new_array
end

def folding_cipher(str)
  alphabet = ("a".."z").to_a
  reversed = ("a".."z").to_a.reverse
  cipher = Hash[alphabet.zip(reversed)]
  str.split("").map { |char| cipher[char] }.join("")
end

def odds(l, r)
  (l..r).each do |el|
    print el if el % 2 == 1
  end
end
