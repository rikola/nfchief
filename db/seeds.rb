# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


product_list = [
	["Hipster band poster", "Faggot rock band from Brooklyn"],
	["Smelly marketing poster", "Fartards"],
	["Hebrew School", "Advanced Hebrology"]
]

product_list.each do |name, description|
  Product.create( name: name, description: description )
end


description_list = [
	["Shit coffee place", 1],
	["France", 1],
	["Belgium", 2],
    ["Netherlands", 2],
    ["Shit coffee place", 1],
	["Satay", 1],
	["Tin Roof", 2],
    ["Taption", 2],
    ["Shartini Mixer", 3],
	["Hebrew Motza", 3],
	["Draedels", 3],
    ["Netherlands", 2],
    ["Shit coffee place", 1],
	["France", 1],
	["Belgium", 2],
    ["Netherlands", 2]
]

description_list.each do |description, product_id|
  Tag.create( location_description: description, product_id: product_id )
end