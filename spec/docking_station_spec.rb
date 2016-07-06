require 'docking_station'

describe DockingStation do

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises and error when no bikes are available' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end

  end

  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end

  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it { is_expected.to respond_to(:dock).with(1).argument}

  it 'responds to bike' do
    expect(subject).to respond_to(:bike)
  end

  it 'docks somthing' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  # it 'returns fail' do
  #   expect{subject.release_bike}.to raise_error("No bike available")
  # end

end
