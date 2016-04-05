ActiveAdmin.register Product do

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

	permit_params :name, :description, :group

	index do
    selectable_column
    id_column
    column :name
    column :description
    column :group
    column :created_at
    column :tag_count
    actions
  end


  show do 
    attributes_table do
      row :id
      row :group
      row :name
      row :description
      row :tag_count
    end

    panel "Country Graphs" do
      columns do
        country_count = product.tags.group(:country).count
        column do
          geo_chart country_count
        end
        column do
          pie_chart country_count
        end
      end
    end

    panel "Tags Deployed" do
      table_for product.tags do
        column :id
        column :lat
        column :lng
        column :country
      end
    end
  end

end
