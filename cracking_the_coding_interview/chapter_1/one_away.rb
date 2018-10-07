def one_away?(str1, str2)
  case (str1.length - str2.length)
  when 1
    one_insert_away?(str1, str2)
  when 0
    one_replace_away?(str1, str2)
  when -1
    one_insert_away?(str2, str1)
  else
    false
  end
end

def one_replace_away?(str1, str2)
  differences = 0
  str1.length.times do |idx|
    differences += 1 if str1[idx] != str2[idx]
    return false if differences > 1
  end
  true
end

# In which str1 is longer than str2
def one_insert_away?(str1, str2)
  str1.length.times do |idx|
    if idx == str1.length - 1
      str2 = str2 + str1[idx]
    elsif str1[idx] != str2[idx]
      str2.insert(idx, str1[idx])
      break
    end
  end
  str1 == str2
end
p one_away?("apple", "aple")

# apple pple aple
