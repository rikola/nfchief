class Product < ActiveRecord::Base
	belongs_to :group
	has_many :tags
end
