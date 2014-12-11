require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) { Bike.new }
	let(:holder) {ContainerHolder.new }

	def fill_station(holder)
		10.times { holder.dock(Bike.new) }
	end	


	it 'should accept a bike' do
		
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it 'should release a bike' do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it 'should know when it\'s full' do
		expect(holder).not_to be_full
		fill_station(holder)
		expect(holder).to be_full
	end

	it 'should not accept a bike if its full' do
		fill_station(holder)
		expect(lambda { holder.dock(bike)}).to raise_error(RuntimeError, 'Station is full')
		# {} like a bomb disposal box, lambda not necessary but a keyword in Ruby
	end
	it 'should provide the list of available bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq([working_bike])
	end
end