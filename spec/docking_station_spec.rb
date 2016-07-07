require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end
    it 'responds to the method dock with 1 argument' do
    is_expected.to respond_to(:dock).with(1).argument
  end
    it 'docking stations can accept a capacity variable' do
    docking = DockingStation.new
    expect(docking.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
  it 'raises and error when the docking station is full' do
    docking = DockingStation.new
    docking.capacity.times {docking.dock(Bike.new)}
    expect {docking.dock(Bike.new)}.to raise_error 'docking station is full'
  end
  it 'allows custom capacity setting' do
    docking = DockingStation.new(45)
    expect(docking.capacity).to eq 45
  end
  it 'raises and error when the docking station is full' do
    docking = DockingStation.new(50)
    docking.capacity.times {docking.dock(Bike.new)}
    expect {docking.dock(Bike.new)}.to raise_error 'docking station is full'
  end

  describe '#release_bike' do

      it 'it wont release a broken bike' do
        bike = Bike.new
        bike.report_broken
        subject.dock(bike)
        expect{subject.release_bike}.to raise_error 'No working bikes'
      end

      it 'returns an error when there are no bikes to release' do
        expect {subject.release_bike}.to raise_error 'no bikes available'
      end
      it 'releases a bike if there are bikes to be released' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
  end



  describe '#dock(bike)' do
    it 'returns an error when the docking station contains 20 bikes' do
      DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error 'docking station is full'
    end
  end

end
