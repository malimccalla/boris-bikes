class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'docking station is full' if full?
    @bikes.push bike
  end

  private
  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end
