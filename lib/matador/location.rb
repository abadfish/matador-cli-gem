require_relative '../matador'
require_relative 'cli'

class Matador::Location
  attr_accessor :lattitude, :longitude, :location_1, :address, :input



  def self.here(address)
    location_1 = self.new
    location_1.lattitude = Geocoder.coordinates(address)[0]
    location_1.longitude = Geocoder.coordinates(address)[1]
    location_1
  end

  # def self.geosearch(input)
  #   Geocoder.coordinates(input)
  # end

end