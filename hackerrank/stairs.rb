=begin
Print a staircase of size n using # symbols and spaces.

=end

n = gets.strip.to_i

i = 1
while i <= n
  puts " " *(n-i) + "#" * i
  i += 1
end
