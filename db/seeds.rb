# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def base_restaurant 
  {
    address: "montreal",
    phone_number: "514 111 1111"
  }  
end

Restaurant.create(base_restaurant.merge({name: "italiano", category: "italian"}))
Restaurant.create(base_restaurant.merge({name: "chino", category: "chinese"}))
Restaurant.create(base_restaurant.merge({name: "japan", category: "japanese"}))
Restaurant.create(base_restaurant.merge({name: "france", category: "french"}))
Restaurant.create(base_restaurant.merge({name: "belgo", category: "belgian"}))

##5.times do |i|
#  Restaurant.create(name: 'italianissimo', address: 'montreal' , { phone_number: '514 555 2525' } { category: 'italian' }])
#end