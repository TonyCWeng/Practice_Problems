require_relative "ride"

class ItemCounter
  attr_accessor :name
  def initialize(name)
    @name = name
    @counter = []
  end

  def process_ride(ride)
    start_time = ride.start_time
    end_time = ride.end_time
    items = parse_inventory(ride.items)

    if @counter.empty?
      @counter << [start_time, end_time, items]
    else
      @counter = update_counter(start_time, end_time, items, @counter)
    end
  end

  def print_items_per_interval()

    @counter.each do |interval|
      report = "#{interval[0]}-#{interval[1]} -> "
      interval[2].each do |item, count|
        report += "#{count.to_s} #{item.to_s}, "
      end
      # trim off the excess comma and space
      puts report[0...-2]
    end
  end

  private
  #converts item from string to hash counter form
  def parse_inventory(items)
    item_count = Hash.new
    items.split(',').each do |item|
      item = item.split(' ')
      item_count[item[1]] = item[0]
    end
    item_count
  end

  def update_counter(start_time, end_time, items, counter)
    counter.length.times do |idx|

    end
  end

  def factor_overlap(starting_inventory, added_inventory)
    list = Hash[old_list.map {|item, count| [k, v.to_i]}]
    new_list.each do |item, count|
      list[key] ||= 0
      list[key] = value.to_i
    end
    list
  end

end

# example = Ride.new("07:20", "08:30","3 diamonds, 1 snowball")
#
# Item_list = ItemCounter.new("Ride Counter")
# Item_list.process_ride(example)
# Item_list.print_items_per_interval()
