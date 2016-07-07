@bikes = ["bike1", "bike2", "bike3"]
def get_bike


  @bikes.each do |bike|
    tim = bike
    @bikes.delete(bike)
    return tim
  end
end

def show_bikes
  @bikes
end
