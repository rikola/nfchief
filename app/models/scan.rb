class Scan < ActiveRecord::Base

	has_one :client
	has_one :tag

end
