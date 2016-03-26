class Tag < ActiveRecord::Base

	has_many :scans
	has_one :group

end
