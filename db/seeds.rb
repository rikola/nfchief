# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


require 'populator'
require 'faker'

[Group, Product, AdminUser, Membership].each(&:delete_all)

AdminUser.create(email: "admin@example.com", password: "password", name: "Mr. Lahey")

# Make users the normal way because it has to pass validation
50.times do
	email = Faker::Internet.safe_email
	name = Faker::Name.name
	password = "password"
	AdminUser.create(email: email, name: name, password: password)
end

puts "Seeded AdminUser Table"

# Populate all the groups with products
Group.populate 50 do |group|
	group.name = Faker::Company.name
	group.description = Faker::Company.catch_phrase
	
	Product.populate 5..25 do |product|
		product.group_id = group.id
		product.name = Faker::Commerce.product_name
		product.description = Faker::Company.bs.capitalize
		
		Tag.populate 5..30 do |tag|
			tag.product_id = product.id
			tag.description = Faker::Address.street_address
			tag.lat = Faker::Address.latitude
			tag.lng = Faker::Address.longitude
			tag.country = Faker::Address.country
		end
	end
	
	Membership.populate 2..10 do |membership|
		membership.admin_user_id = AdminUser.all.sample.id
		membership.group_id = group.id
	end
end

puts "Seeded Group/Product/Tag/Membership Heirarchy"


Customer.populate 15 do |customer|
	customer.token = Faker::Internet.password(10)
	
	Scan.populate 50 do |scan|
		scan.customer_id = customer.id
		scan.tag_id = Tag.all.sample.id
		scan.ip_address = Faker::Internet.ip_v4_address
		scan.created_at = Faker::Time.between(10.days.ago, Time.now, :all)
	end
end

puts "Done!!!"


