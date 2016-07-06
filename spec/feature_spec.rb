require 'docking_station'
require 'spec_helper'

feature 'Instantiate a docking station' do
  docking_station = DockingStation.new

  scenario 'that contains no bikes' do
    expect(docking_station.bikes.count).to eq(0)
  end

  scenario 'that can dock bikes' do
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq [bike]
  end

  scenario 'that can release a bike' do
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.release_bike).to eq bike
  end

end
