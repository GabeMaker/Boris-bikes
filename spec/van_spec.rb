require 'van'

describe Van do

	it 'should collect only broken bikes from docking station' do
		van = Van.new
		station = DockingStation.new
		bike = Bike.new
		broken_bike = Bike.new
		broken_bike.break!
		station.dock(bike)
		station.dock(broken_bike)
		van.collect(station)
		expect(van.bikes).to eq ([[broken_bike]])
	end


		# expect(bike).not_to be_broken


end
