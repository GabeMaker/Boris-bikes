require './lib/bike_container.rb'

class Van

	include BikeContainer

	def collect(station)
		broken_bikes = station.bikes.select{ | bike | bike.broken? == true}
		bikes << broken_bikes
		#remove from station
		#add these bikes to van
	end

end
