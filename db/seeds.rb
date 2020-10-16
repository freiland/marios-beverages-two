# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

125.times do |index|
  Product.create!(name: Faker::Beer.name,
                        cost: rand(1..25), country_of_origin: Faker::WorldCup.team)
                        
end

p "Created #{Product.count} beers"
