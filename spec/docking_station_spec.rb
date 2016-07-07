require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to(:bike)}

  it 'docks bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  it 'releases bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  describe "#release_bike" do
      it 'raises an error when there are no bikes available' do
        #we are not docking a bike first now
        #subject is DockingStation.new
        expect {subject.release_bike}.to raise_error 'No bikes available'
      end
  end

  describe "#dock" do
    it 'raises an error when full' do
       20.times{subject.dock(Bike.new)}
       expect {subject.dock (Bike.new)}.to raise_error 'Docking station full'
    end
  end

end
