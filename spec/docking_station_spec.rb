require 'docking_station'

describe DockingStation do

  let (:bike) {instance_double("Bike", report_broken: true)}

  describe '#initialize' do

    it 'Instantiates with a deafult capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
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
      allow(bike).to receive_messages(report_broken: true, broken?: true)
      bike.report_broken
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error 'No working bikes'
    end

    it 'raises an error when there are no bikes to release' do
      expect {subject.release_bike}.to raise_error 'no bikes available'
    end

    it 'only releases a bike if it is working' do
      #we break our dummy bike for this example
      allow(bike).to receive(:broken?).and_return(false) #or { false } instead
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
      docking.capacity.times {docking.dock(double(:bike))}
      expect {docking.dock(double(:bike))}.to raise_error 'docking station is full'
    end

    it 'raises an error when a deafult capacity docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times{subject.dock(bike)}
      expect {subject.dock(bike)}.to raise_error 'docking station is full'
    end

    it 'responds to the method #dock with 1 argument' do
      is_expected.to respond_to(:dock).with(1).argument
    end

  end

end
