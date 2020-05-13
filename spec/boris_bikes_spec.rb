require_relative  '../lib/docking_station.rb'
describe DockingStation do
  it "Check if release_bike respond to DockingStation" do
    expect(DockingStation.new.respond_to?(:release_bike)).to eq true
  end

  it "should return a bike when release_bike is called on it" do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end
end
