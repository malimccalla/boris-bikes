require 'docking_station'

describe DockingStation do

  describe '#bikes' do

    it 'responds to bike' do
      expect(subject).to respond_to(:bikes)
    end

  end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises and error when no bikes are available' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end

    it 'responds to the method "release_bike"' do
      expect(subject).to respond_to(:release_bike)
    end

  end

  describe '#dock' do

    it 'raises an error if capacity is full' do
      20.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error("Bike capacity full")
    end

    it { is_expected.to respond_to(:dock).with(1).argument}

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end

  end

end
