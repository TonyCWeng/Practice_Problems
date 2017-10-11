class Ride
  attr_accessor :start_time, :end_time, :items

  def initialize(start_time = nil, end_time = nil, items = nil)
    @start_time = start_time
    @end_time = end_time
    @items = items
  end
end

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
      @counter = add_entry(start_time, end_time, items, @counter)
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

  #converts item from string to hash form
  def parse_inventory(items)
    item_count = Hash.new
    items.split(',').each do |item|
      item = item.split(' ')
      item_count[item[1]] = item[0]
    end
    item_count
  end

end
