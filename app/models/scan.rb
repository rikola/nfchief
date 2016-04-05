class Scan < ActiveRecord::Base
	belongs_to :customer
	belongs_to :tag
end
