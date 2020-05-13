class DockingStation

  attr_reader :bike

  def release_bike
    if @bike
      @bike = nil
      return Bike.new
    end
    raise StandardError, "no bike"
  end

  def dock(bike)
    if @bike
      raise StandardError, "to many bike"
    end
    @bike = bike
  end
end

class Bike
  def working?
    true
  end
end
