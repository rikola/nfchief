ActiveAdmin.register Group do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	
	permit_params :name, :description, :products

	index do
    selectable_column
    id_column
    column :name
    column :description
    actions
  end

  show do
  	attributes_table do
  		row :name
  		row :description
  	end

  	panel "Members" do
  		table_for group.admin_users do
  			column :email
  			column :name
  		end
  	end

  	panel "Products" do
 	 		table_for group.products do
 	 			column :id
 	 			column :name
 	 			column :description
 	 		end
 	 	end

  	active_admin_comments
  end

end
