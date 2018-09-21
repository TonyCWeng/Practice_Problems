# You're given a string, j, representing the types of stones that are jewels.
# And a string, s, represents the stones that you have. You want to know how
# many of these stones are jewels. Letters are case sensitive, so "a" != "A".

def num_jewels_in_stones(j, s)
  jewels = 0
  s.each_char do |stone|
    if j.include?(stone)
      jewels += 1
    end
  end
  jewels
end

p num_jewels_in_stones("aA", "aAAbbbb") == 3
