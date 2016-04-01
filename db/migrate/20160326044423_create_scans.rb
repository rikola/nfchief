class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|

      t.timestamps null: false
    end

    add_reference :scans, :tag
  end
end
