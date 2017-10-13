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
        item = verify_plurality(item, count)
        report += "#{count.to_s} #{item.to_s}, "
      end

      # trim off the excess comma and space
      puts report[0...-2]
    end
  end

  private
  # converts item from string to hash counter form
  # pluralize items to deal with keys differing only in plurality
  def parse_inventory(items)
    item_count = Hash.new
    items.split(',').each do |item|
      item = item.split(' ')
      item[1] = pluralize(item[1])
      item_count[item[1]] = item[0]
    end
    item_count
  end

  def update_counter(start_time, end_time, items, counter)
    # if there is no overlap among current values (ride begins and ends before
    # any other ride begins)
    if counter.all? { |start, _, _| end_time < start }
      return counter.unshift([start_time, end_time, items])
    end

    # if the current ride begins after all other rides have ended
    if counter.all? { |_, ending, _| start_time > ending }
      return counter << [start_time, end_time, items]
    end

    i = 0
    # Assumption: Rides are generated in sequential order of start_times
    # As such, newer rides always have a later start time.
    # In this scenario, there are 3 potential scenarios for overlapping inventory:
    # 1) when two rides share an end-time, we need only generate one new
    #    interval and update the endtime of the interval we are comparing
    # 2) when the new ride ends before a prior ride, we generate 2 new intervals,
    #    one that accounts for overlap and the other being the remainder
    #    of the current_ride. We then update the end_time for the current_ride.
    # 3) when the new ride ends after a prior ride, we generate 2 new intervals,
    #    one that accounts for overlap and the other being the remainder of the
    #    new entry. We then update the end_time of the current ride.
    # In all 3 scenarios, we increment i accordingly so as to not double
    # count inventory by adding it to an interval it has already been accounted
    # for.

    # Loop through all prior established ride intervals
    while i < counter.length
      current_start = counter[i][0]
      current_end = counter[i][1]
      current_inventory = counter[i][2]

      if start_time > current_start && start_time < current_end && end_time == current_end
        new_interval = [start_time, end_time, sum_inventory(current_inventory, items)]
        counter[i][1] = start_time
        counter.insert(i+1, new_interval)
        i += 1
      elsif
        start_time > current_start && start_time < current_end && end_time < current_end
        new_interval = [start_time, end_time, sum_inventory(current_inventory, items)]
        new_interval_2 = [end_time, current_end, current_inventory]
        counter[i][1] = start_time
        counter.insert(i+1, new_interval, new_interval_2)
        i += 2
      elsif
        start_time > current_start && start_time < current_end && end_time > current_end
        new_interval = [start_time, current_end, sum_inventory(current_inventory, items)]
        new_interval_2 = [current_end, end_time, items]
        counter[i][1] = start_time
        counter.insert(i+1, new_interval, new_interval_2)
        i += 2
      elsif start_time < current_start && end_time == current_end
        new_interval = [start_time, current_start, items]
        counter[i][2]= sum_inventory(current_inventory, items)
        counter.insert(i, new_interval)
        i += 1
      elsif start_time < current_start  && end_time > current_end
        new_interval = [start_time, current_start, items]
        new_interval_2 = [current_end, end_time, items]
        counter[i][2] = sum_inventory(current_inventory, items)
        counter.insert(i, new_interval)
        counter.insert(i+2, new_interval_2)
        i += 2
      elsif start_time < current_start && end_time < current_end

        new_interval = [start_time, current_start, items]
        new_interval_2 = [end_time, current_end, current_inventory]
        counter[i][2]= sum_inventory(current_inventory, items)
        counter.insert(i, new_interval)
        counter.insert(i+2, new_interval_2)
        i += 2
      end
      i += 1
    end
    counter
  end

  def sum_inventory(starting_inventory, additional_inventory)
    inventory = Hash[starting_inventory.map {|item, count| [item, count.to_i]}]
    additional_inventory.each do |item, count|
      inventory[item] ||= 0
      inventory[item] += count.to_i
    end
    inventory
  end

  def pluralize(string)
    string[-1] == 's' ? string : string + 's'
  end

  def verify_plurality(string, count)
    return string if count.to_i > 1
    string.chop
  end
end
