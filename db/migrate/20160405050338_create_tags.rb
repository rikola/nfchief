class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    	t.belongs_to :product, index: true
    	t.string :description
    	# Geokit properties for location data
    	t.float :lat
    	t.float :lng
    	t.string :country

    	t.timestamps null: false
    end
  end
end
