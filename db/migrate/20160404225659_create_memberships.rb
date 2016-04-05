class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :admin_user
      t.belongs_to :group

      t.timestamps null: false
    end
  end
end
