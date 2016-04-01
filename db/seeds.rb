# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# 
product_list = [
	["Bubbles and the Shit Rockers", "Best band in Sunnyvale!"],
	["Synergy Internet of Things in The Cloud", "Cheesy marketing company campaign."],
	["Hebrew School", "Advanced Hebrology and IDF recruiting."]
]

product_list.each do |name, description|
  Product.create( name: name, description: description )
end


# [location_description, product_id]
description_list = [
	["Shit coffee place", 1],
	["On the Rand billboard", 1],
	["Behind your mother", 2],
    ["Buttrick first floor", 2],
    ["Chili's", 1],
	["Qudoba", 1],
	["Tin Roof", 2],
    ["Barnes & Noble", 2],
    ["Bread & Co.", 3],
	["Wendys", 3],
	["The Liquor Store", 3],
    ["Chipotle", 2],
    ["Mellow Mushroom", 1],
	["Panera", 1],
	["Starbucks", 2],
    ["Brueggers", 2]
]

description_list.each do |description, product_id|
  Tag.create( location_description: description, product_id: product_id )
end