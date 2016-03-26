class Client < ActiveRecord::Base

	has_many :scans, inverse_of: :client

end
