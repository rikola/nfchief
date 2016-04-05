namespace :db do
	desc "Erase and fill database"
	task :populate => :environment do
		require 'populator'
		require 'faker'

		[Group, Product, AdminUser, Membership].each(&:delete_all)

		AdminUser.create(email: "admin@example.com", password: "password", name: "Mr. Lahey")

		# Make users the normal way because it has to pass validation
		100.times do
			email = Faker::Internet.safe_email
			name = Faker::Name.name
			password = "password"
			AdminUser.create(email: email, name: name, password: password)
		end

		# Populate all the groups with products
		Group.populate 100 do |group|
			group.name = Faker::Company.name
			group.description = Faker::Company.catch_phrase
			
			Product.populate 10..100 do |product|
				product.group_id = group.id
				product.name = Faker::Commerce.product_name
				product.description = Faker::Company.bs
			end

			Membership.populate 2..10 do |membership|
				membership.admin_user_id = AdminUser.all.sample.id
				membership.group_id = group.id
			end
		end 

	end
end