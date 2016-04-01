class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :cookie_token

      t.timestamps null: false
    end

    add_reference :scans, :customer, index: true
  end
end
