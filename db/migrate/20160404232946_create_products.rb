class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :group, index: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
