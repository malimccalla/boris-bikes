class DockingStation

attr_reader :bike

  def release_bike
    fail 'no bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'docking station is full' if @bike
    @bike = bike
  end

=begin #same as attr_reader code
  def bike
    @bike
  end

=end
end
