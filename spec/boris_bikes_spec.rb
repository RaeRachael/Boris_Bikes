require_relative  '../lib/docking_station.rb'
describe DockingStation do
  it "Check if release_bike respond to DockingStation" do
    docking_station = DockingStation.new
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end
end
