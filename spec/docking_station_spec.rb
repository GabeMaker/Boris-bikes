require 'docking_station'

describe DockingStation do

	let(:station) { DockingStation.new(capacity: 123) }
	it 'should allow setting custom capacity on initializing' do
		expect(station.capacity).to eq(123)
	end
end


#OLD DIRTY TESTING

# describe DockingStation do
# 	let(:bike) { Bike.new}
# 	let(:station) { DockingStation.new(:capacity => 20)}
# 	def fill_station(station)
# 		20.times { station.dock(Bike.new) }
# 	end	


# end