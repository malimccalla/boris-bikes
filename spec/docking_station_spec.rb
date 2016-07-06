require 'docking_station'

describe DockingStation do
  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end
    it 'responds to the method dock with 1 argument' do
    is_expected.to respond_to(:dock).with(1).argument
  end

  describe '#release_bike' do
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
      20.times{subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error 'docking station is full'
    end
  end

end
