require 'bike'

describe Bike do

  it 'expects all new bikes not to be broken' do
    expect(subject).not_to be_broken
  end

  it 'can be reported broken' do
    expect(subject.report_broken).to eq true
  end

end
