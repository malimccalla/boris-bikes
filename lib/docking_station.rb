class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'no bikes available' if empty?
    fail 'No working bikes' unless has_working_bike?
    @bikes.each do |bike|
      unless bike.broken?
        return @bikes.delete(bike)
      end
    end
  end

  def dock(bike)
    fail 'docking station is full' if full?
    @bikes.push bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

  def has_working_bike?
    @bikes.each do |bike|
      unless bike.broken?
        return true #exit out as soon as we find atleast one working bike
      end
    end
    false
  end

end
