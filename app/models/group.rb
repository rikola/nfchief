class Group < ActiveRecord::Base
	has_many :memberships
	has_many :admin_users, :through => :memberships

	has_many :products

	
end
