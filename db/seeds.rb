# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

125.times do |index|
  product = Product.create!(name: Faker::Beer.name,cost: rand(1..25), country_of_origin: Faker::WorldCup.team)
  2.times do |index|

                        
    product.reviews.create!(author: Faker::FunnyName.two_word_name,content_body: Faker::Lorem.characters(number: 61),rating: rand(1..5))
  end
end
                      
                        
                                        
p "Created #{Product.count} beers"
p "Created #{Review.count} reviews"
