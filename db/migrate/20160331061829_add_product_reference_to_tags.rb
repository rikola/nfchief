class AddProductReferenceToTags < ActiveRecord::Migration
  def change
  	add_reference :tags, :product, index: true
  end
end
