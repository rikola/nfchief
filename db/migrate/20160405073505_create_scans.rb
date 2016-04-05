class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
    	t.belongs_to :customer, index: true
    	t.belongs_to :tag, index: true
    	t.inet :ip_address

    	t.timestamps null: false
    end
  end
end
