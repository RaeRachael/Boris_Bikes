require_relative "../lib/docking_station.rb"
describe Bike do
  it "Check if Bike to respond_to? working?" do
    expect(Bike.new.respond_to?(:working?)).to eq(true)
  end
  it "should be be released from DockingStation" do
    station = DockingStation.new
    station.dock(Bike.new)
    expect(station.release_bike.working?).to eq(true)
  end
end
