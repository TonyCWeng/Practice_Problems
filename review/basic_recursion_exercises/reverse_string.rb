# Write a function that takes in a string and returns
# it reversed.

def reverse_string(str)
  # Base Step
  return str if str.empty?

  # Recursive Step
  reverse_string(str[1..-1]) + str[0]
end
p reverse_string("house") == "esuoh"
p reverse_string("") == ""
