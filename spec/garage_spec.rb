require 'garage'

describe Garage do

	it 'should fix bikes' do
		bike = Bike.new
		garage = Garage.new
		bike.break!
		garage.fix(bike)
		expect(bike).not_to be_broken
	end
end