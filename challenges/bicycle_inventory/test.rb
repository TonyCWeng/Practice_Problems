require_relative 'item_counter'

example = Ride.new("07:20", "08:30","1 diamond, 1 emerald")
example2 = Ride.new("08:00", "09:30","3 diamonds, 1 snowball")
example3 = Ride.new("09:00", "10:00","3 kiwis, 2 emeralds, 1 snowball")

Inventory = ItemCounter.new("Inventory Counter")
Inventory.process_ride(example)
Inventory.process_ride(example2)
Inventory.process_ride(example3)
Inventory.print_items_per_interval()
