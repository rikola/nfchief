ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        
        #panel "Tags Created" do
        #  pie_chart Tag.group(:product_id).count
        #end

        panel "My Groups" do
          ul do
            current_admin_user.groups.each do |group|
              li link_to(group.name, admin_group_path(group))
            end
          end
        end
        
      end

      column do

        panel "Scan Heat Map" do
          geo_chart [ 
            ["United States", rand(200)],
            ["Russia", rand(200)],
            ["China", rand(200)],
            ["Niger", rand(200)],
            ["France", rand(200)],
            ["Norway", rand(200)],
            ["Peru", rand(200)],
            ["Argentina", rand(200)],
            ["Saudi Arabia", rand(200)],
            ["New Zealand", rand(200)]
          ]
        end

      end

    end


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
