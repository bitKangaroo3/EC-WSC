# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create!(email: "test@test.com",
#						password: "foober")

6.times do |p|
	name = Faker::Commerce.product_name
	description = Faker::Lorem.paragraph(2)
	price = Faker::Number.number(5)
	units = ["yen", "dollar"]
	unit = units[rand(2)]

	Product.create!(name: name,
									description: description,
									price: price,
									unit: unit)
end