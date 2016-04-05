class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :cookie_token
    end
  end
end
