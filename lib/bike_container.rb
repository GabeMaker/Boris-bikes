module BikeContainer

	DEFAULT_CAPACITY = 10

##### ?taken from intiialise

#accessor method

	def bikes
		@bikes ||= []
	end

#accessor method

# this is short for: @capacity = @capacity || 
# so this method returns value of @capacity - if @capacity is nil it will assign DEFAULT_CAPACITY 

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

# ? accessor method

	def capacity=(value)
		@capacity = value
	end


#####
	def bike_count
		bikes.count
	end

	def dock(bike)
		raise 'No room for bikes' if full?
		bikes << bike
	end

	def release(bike)
		bikes.delete(bike)
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.reject {|bike| bike.broken?}
	end

end
