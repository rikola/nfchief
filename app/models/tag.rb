class Tag < ActiveRecord::Base

	has_many :scans
	belongs_to :group, inverse_of: :tag

end
