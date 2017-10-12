require_relative "ride"

class ItemCounter
  attr_accessor :name
  attr_accessor :counter

  def initialize(name)
    @name = name
    @counter = []
  end

  def process_ride(ride)
    start_time = ride.start_time
    end_time = ride.end_time
    items = parse_inventory(ride.items)

    # if there are no items onboard, ignore the ride entirely
    return if items.empty?

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
    # if there is no overlap among current values (ride begins and ends before
    # any other ride begins)
    if counter.all? { |start, ending| start < start_time &&
    ending > end_time }
      return counter.unshift([start_time, end_time, items])
    end

    # if the newest ride begins after all other rides have ended
    if counter.all? { |start, ending| start_time > ending }
      return counter << [start_time, end_time, items]
    end

    i = 0
    while i < counter.length
      if start_time > counter[i][0] && end_time < list[i][1]
      end
      i += 1
    end
  end

  def factor_overlap(starting_inventory, additional_inventory)
    list = Hash[old_list.map {|item, count| [k, v.to_i]}]
    new_list.each do |item, count|
      list[key] ||= 0
      list[key] = value.to_i
    end
    list
  end

end

example = Ride.new("07:20", "08:30","2 diamonds, 1 emerald")
example2 = Ride.new("09:20", "10:30","3 diamonds, 1 snowball")

Inventory = ItemCounter.new("Ride Counter")
Inventory.process_ride(example)
Inventory.process_ride(example2)
# Inventory.counter
Inventory.print_items_per_interval()
