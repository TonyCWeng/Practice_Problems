class Ride
  attr_accessor :start_time, :end_time, :items

  def initialize(start_time, end_time, items)
    @start_time = start_time
    @end_time = end_time
    @items = items
  end
end
