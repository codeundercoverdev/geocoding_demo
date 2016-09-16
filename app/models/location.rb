class Location < ApplicationRecord
	geocoded_by :full_street_address

	def convert_to_coordinates
		Geocoder.coordinates("#{street_address}, #{city}, #{state}")
	end
end
