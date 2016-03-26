class Group < ActiveRecord::Base

	has_many :users
	has_many :tags, inverse_of :group

end
