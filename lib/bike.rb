class Bike

  attr_reader :working

  def initialize(broken=false)
    @broken = broken
  end

  def broken?
    @broken
  end

  def report_broken
    @broken = true
  end

end
