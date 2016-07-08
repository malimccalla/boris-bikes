require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#initialize' do

    it 'Instantiates with a deafult capacity' do
      docking = DockingStation.new
      expect(docking.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

  end

  describe '#capacity' do

    it 'allows for reading and writing of capacity' do
      docking = DockingStation.new(45)
      expect(docking.capacity).to eq 45
    end

  end

  describe '#release_bike' do

    it 'it wont release a broken bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error 'No working bikes'
    end

    it 'raises an error when there are no bikes to release' do
      expect {subject.release_bike}.to raise_error 'no bikes available'
    end

    it 'only releases a bike if it is working' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'responds to the method #release_bike' do
      expect(subject).to respond_to(:release_bike)
    end

  end

  describe '#dock' do

    it 'raises an error when a docking station is full' do
      docking = DockingStation.new(50)
      docking.capacity.times {docking.dock(Bike.new)}
      expect {docking.dock(Bike.new)}.to raise_error 'docking station is full'
    end

    it 'raises an error when a deafult capacity docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error 'docking station is full'
    end

    it 'responds to the method #dock with 1 argument' do
      is_expected.to respond_to(:dock).with(1).argument
    end

  end

end
