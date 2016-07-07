require 'bike'

describe Bike do


  it 'can be reported broken' do
    expect(subject.report_broken).to eq true
  end

end
