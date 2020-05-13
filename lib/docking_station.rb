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
    if @bike.length == @cap
      raise StandardError, "to many bikes"
    else
      @bike << bike
    end
  end
end

class Bike
  def working?
    true
  end
end
