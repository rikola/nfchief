class Scan < ActiveRecord::Base

	has_one :client
	has_one :tag
	has_one :group, through: :tag

end
