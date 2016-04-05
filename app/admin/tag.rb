ActiveAdmin.register Tag do

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

	permit_params :product_id, :description, :lat, :lng, :scans

	index do
		selectable_column
		id_column
		column :description
		column :lat
		column :lng
		column :country
		actions
	end

	show do
		attributes_table do
			row :product
			row :description
			row :lat
			row :lng
			row :country
		end
	end
end
