class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'docking station is full' if @bikes.count >= 20
    @bikes.push bike
  end

=begin #same as attr_reader code
  def bike
    @bike
  end

=end
end
