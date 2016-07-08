# require 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def has_working_bike?
    @bikes.each do |bike|
      if bike.broken? == false
        return true
      end
    end
    false
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
end
