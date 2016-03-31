class AddLocationDescriptionToTags < ActiveRecord::Migration
  def change
  	add_column :tags, :location_description, :string
  end
end
