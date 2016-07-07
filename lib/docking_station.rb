require_relative 'bike'

class DockingStation
  attr_reader :bike, :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.length > 19
    @bikes << bike
  end

end
