class Product < ActiveRecord::Base
	belongs_to :group
	has_many :tags

	def tag_count
		tags.count
	end

	def scans
		all_scans = []
		tags.each do |tag|
			all_scans << tag.scans
		end
		all_scans.flatten
	end

end
