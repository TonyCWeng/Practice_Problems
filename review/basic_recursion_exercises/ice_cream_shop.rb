=begin
Write a function ice_cream_shop(flavors, favorite) that takes in an array of
ice cream flavors available at the ice cream shop, as well as the user's
favorite ice cream flavor. Recursively find out whether or not the shop offers
their favorite flavor.
=end

# Can only use multi-line begin/end outside of methods. As such, the
# pound sign (#) is preferred. # is usually better in terms of visibility.

def ice_cream_shop(flavors, favorite)
  # Base step
  return false if flavors.empty?
  return true if flavors[0] == favorite
  # Recursive Step
  ice_cream_shop(flavors[1..-1], favorite)
end

p ice_cream_shop(['pistachio', 'green', 'chocolate'], 'green') == true
p ice_cream_shop([], 'honey lavender') == false
