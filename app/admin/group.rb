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
    column :products
    actions
  end

  filter :products
  filter :name
  filter :description
  filter :created_at

  show do
  	attributes_table do
  		row :name
  		row :description
  	end

    panel "Product Activity" do
      # Somethings fucky here
      line_chart group.products.each do |product|
        { name: product.name, data: product.scans.group_by_day(:created_at).count }
      end
    end

    columns do
      column do
      	panel "Members – #{group.admin_users.count}" do
      		table_for group.admin_users do
      			column :email
      			column :name
      		end
      	end
      end
      column do
      	panel "Products – #{group.products.count}" do
     	 		table_for group.products do
     	 			column :name
     	 			column :description
     	 		end
     	 	end
       end
     end
  end

end
