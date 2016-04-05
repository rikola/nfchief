ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :created_at
    actions
  end

  filter :email
  filter :created_at
  filter :groups

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end


  show do
    attributes_table do
      row :name
      row :email
      row :created_at
      row :sign_in_count
    end

    panel "Group Memberships" do
      table_for admin_user.groups do
        column :name
        column :description
      end
      end    
  end

end
