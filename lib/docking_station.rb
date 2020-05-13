class DockingStation

  attr_reader :bike

  def initialize
    @cap = 20
    @bike = []
  end

  def release_bike
    if @bike.length > 0
      @bike.pop
    else
      raise StandardError, "no bike"
    end
  end

  def dock(bike)
    @bike << bike unless full?
  end
end

private
def full?
  if @bike.length == @cap
    raise StandardError, "to many bikes"
    return true
  end
end

class Bike
  def working?
    true
  end
end
