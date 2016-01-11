class DockingStation

  attr_reader :bikes

  def initialize

    @bikes = []
  end

  def release_bike
    fail 'Sorry no bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.size >= 20
    @bikes << bike
  end
end
