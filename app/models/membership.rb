class Membership < ActiveRecord::Base
	belongs_to :admin_user
	belongs_to :group
end
