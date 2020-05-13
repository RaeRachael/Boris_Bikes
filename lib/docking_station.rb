class DockingStation

  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(cap = DEFAULT_CAPACITY)
    @bike = [] ## knowledge of bikes being broken or not
    @capacity = cap
  end

  def release_bike
    @bike.pop unless empty?
  end

  def dock(bike) ## argument of wether broken or not
    @bike << bike unless full?
  end

  private
  def full?
    if @bike.length == @capacity
      raise StandardError, "to many bikes"
      return true
    end
  end

  def empty?
    if @bike.length <= 0
      raise StandardError, "no bike"
      return true
    end
  end
end

class Bike
  def working?
    true
  end
end
