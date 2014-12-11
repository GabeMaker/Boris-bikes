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

	it 'should not collect working bikes from station' do
		van = Van.new
		station = DockingStation.new
		bike = Bike.new
		broken_bike = Bike.new
		broken_bike.break!
		station.dock(bike)
		station.dock(broken_bike)
		van.collect(station)
		
		# puts "**********"
		# puts van.inspect
		# puts station.inspect
		# puts "**********"
		
		expect(station.bikes).to eq ([bike])
	end

	it 'release bikes at garage' do
		van = Van.new
		broken_bike = Bike.new
		garage = Garage.new
		van.dock(broken_bike)
		van.release_to(garage)
		expect(van.bikes).to eq ([])
		expect(garage.bikes).to eq ([broken_bike])
	end

		# expect(bike).not_to be_broken


end

#irb .inspect