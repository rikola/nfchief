ActiveAdmin.register Customer do

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

	permit_params :scans, :token, :created_at

	index do
		selectable_column
		id_column
		column :token
		column :created_at
		actions
	end

	filter :token
	filter :created_at

	show do
		attributes_table do
			row :id
			row :token
		end

		panel "Scan Activity" do
			area_chart customer.scans.group_by_day(:created_at).count
		end

		panel "Scans History" do
			table_for customer.scans do
				column :tag
				column :ip_address
				column :created_at
			end
		end
	end

end
