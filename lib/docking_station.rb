class DockingStation

  attr_reader :bike

  def initialize
    @cap = 20
    @bike = 0
  end

  def release_bike
    if @bike > 0
      @bike -= 1
      return Bike.new
    end
    raise StandardError, "no bike"
  end

  def dock(bike)
    if @bike == @cap
      raise StandardError, "to many bikes"
    else
      @bike += 1
    end
  end
end

class Bike
  def working?
    true
  end
end
