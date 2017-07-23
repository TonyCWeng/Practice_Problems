require 'set'

#Set possesses .length, works the same as with any other structure.
cur = Set.new
cur << 4
cur.add(3)
#cur << 4 == cur.add(4)

p cur.inspect
#Otherwise, we'd get the set returned, but not see the values inside
