require_relative 'bike_container'

class Garage
	
	include BikeContainer

	def fix(bike)
		bike.fix!
	end
end