require_relative  '../lib/docking_station.rb'
describe DockingStation do
  it "Check if release_bike respond to DockingStation" do
    expect(DockingStation.new.respond_to?(:release_bike)).to eq true
  end

  it "should return a bike when release_bike is called on it" do
    station = DockingStation.new
    station.dock(Bike.new)
    expect(station.release_bike).to be_an_instance_of(Bike)
  end

  it "should accept a bike when dock is called on it" do
    expect(DockingStation.new.dock(Bike.new)).to be_an_instance_of(Bike)
  end

  it "should return a bike object when bike is called on it" do
    station = DockingStation.new
    station.dock(Bike.new)
    expect(station.bike).to be_an_instance_of(Bike)
  end

  it "should raise an error when release_bike is called on empty station" do
    expect{ DockingStation.new.release_bike }.to raise_error(StandardError, "no bike")
  end

  it "should raise an error when dock is called on full station" do
    station = DockingStation.new
    station.dock(Bike.new)
    expect{ station.dock(Bike.new) }.to raise_error(StandardError, "to many bikes")
  end
end
