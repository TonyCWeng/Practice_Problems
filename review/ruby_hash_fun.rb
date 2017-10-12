# Adding hash counters
# a = {a:2, b:3}
# b = {a:4, c:5}
#
# c = a.dup
# b.each do |key, value|
#   c[key] ||= 0
#   c[key] += value
# end
# print c
#
# person1 = {
#   "name" => "MarkZuckerberg",
#   "company_name" => "Facebook",
#   "job" => "CEO"
# }
#
# person2 = {
#   "name" => "BillGates",
#   "company_name" => "Microsoft",
#   "position" => "Chairman"
# }
# people  = person1.merge(person2) {|key, oldval, newval| oldval}
# p people
#if you wish to merge, but have old values take precedence

# a = [[1,2,3],
# [4,5,6]]
# x = 10
# p a.all? { |a,b,c| a < x}
