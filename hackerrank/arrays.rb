arr = gets.strip
arr = arr.split(' ').map(&:to_i)

rev = arr.reverse
len = arr.length
i = 0
while i < len
  print rev[i]
  print " "
  i += 1
end

# they asked for something a bit weird, but I guess that they
# did not check for an ending space?
