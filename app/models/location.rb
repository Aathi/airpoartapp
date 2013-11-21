class Location < ActiveRecord::Base
  attr_accessible :air_name, :air_code, :air_contactnumber, :air_address, :air_postcode, :air_descriptions, :air_factandfigures, :air_destination, :air_parking, :air_history, :air_hotels, :air_directions, :latitude, :longitude
  geocoded_by :air_postcode
  after_validation :geocode, :if => :air_postcode_changed? 


end
