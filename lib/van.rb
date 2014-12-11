require './lib/bike_container.rb'

class Van

	include BikeContainer

	def collect(station)
		broken_bikes = station.bikes.select{ | bike | bike.broken? == true}
		bikes << broken_bikes
		broken_bikes.each { |bike| station.release(bike) }


		#remove from station
		#add these bikes to van
	end

	def release_to(garage)
		bikes.each do |bike| 
			self.release(bike)
			garage.dock(bike)
		end

	end

end
