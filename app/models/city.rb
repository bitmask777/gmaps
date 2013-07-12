class City < ActiveRecord::Base
	acts_as_gmappable
  	attr_accessible :gmaps, :latitude, :longitude, :name, :population, :state
  	def gmaps4rails_address
  		"#{name}, #{state}"
  	end
end
