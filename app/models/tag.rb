class Tag < ActiveRecord::Base
	acts_as_mappable

	belongs_to :product

	validates :lat, numericality: { 
		greater_than_or_equal_to: -90.0, 
		less_than_or_equal_to: 90.0,
		allow_nil: true
	}

	validates :lng, numericality: { 
		greater_than_or_equal_to: -180.0, 
		less_than_or_equal_to: 180.0,
		allow_nil: true
	}

	# TODO: Fix the insane API usage here
	def country
		Geokit::Geocoders::GoogleGeocoder.reverse_geocode "#{lat}, #{lng}"
	end
end
