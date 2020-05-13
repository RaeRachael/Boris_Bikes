require_relative  '../lib/docking_station.rb'
describe DockingStation do

  before(:each) do
    @station = DockingStation.new
  end

  it "Check if release_bike respond to DockingStation" do
    expect(@station.respond_to?(:release_bike)).to eq true
  end

  it "should return a bike when release_bike is called on it" do
    @station.dock(Bike.new)
    expect(@station.release_bike).to be_an_instance_of(Bike)
  end

  it "should accept a bike when dock is called on it" do
    num = @station.bike.length
    @station.dock(Bike.new)
    expect(@station.bike.length).to eq(num+1)
  end

  it "should return a bike object when bike is called on it" do
    @station.dock(Bike.new)
    expect(@station.bike).to be_an_instance_of(Array)
  end

  it "should raise an error when release_bike is called on empty station" do
    expect{ @station.release_bike }.to raise_error(StandardError, "no bike")
  end

  it "should raise an error when dock is called on full station" do
    DockingStation::DEFAULT_CAPACITY.times { @station.dock(Bike.new) }
    expect{ @station.dock(Bike.new) }.to raise_error(StandardError, "to many bikes")
  end

  it "should have DEFAULT_CAPACITY if no capcity is specified" do
    expect(@station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end

  [10,34,76].each do |num|
    it "should have @capacity that it is initialized with" do
      docking = DockingStation.new(num)
      expect(docking.capacity).to eq(num)
    end
  end
end
