class DockingStation

  attr_reader :bike

  def initialize
    @cap = 20
    @bike = []
  end

  def release_bike
    @bike.pop unless empty?
  end

  def dock(bike)
    @bike << bike unless full?
  end

  private
  def full?
    if @bike.length == @cap
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
