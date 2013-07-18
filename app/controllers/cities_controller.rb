class CitiesController < ApplicationController
  def index
  	@cities = City.all
  	@json = @cities.to_gmaps4rails do |city, marker|
  		marker.infowindow render_to_string(:partial => "/cities/infowindow", :locals => { :city => city })
  		marker.title "#{city.name}"
  		marker.json({ :population => city.population })
    	marker.picture({
    		#:picture => "http://icons.iconarchive.com/icons/designbolts/3d-social/128/Facebook-icon.png",
            :width => 32,
            :height => 32})
  	end
  end
end
