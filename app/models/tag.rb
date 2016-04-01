class Tag < ActiveRecord::Base

	belongs_to :product

	has_many :scans
	
end
