# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "072846521" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french", phone_number: "0728465867621" }
turkish_pide = { name: "turkish pide", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian", phone_number: "04421576527" }
british_breakfast = { name: "british breakfast", address: "57A Shoreditch High St, London E1 6PQ", category: "japanese" }
chef_italy = { name: "chef italy", address: "59A Shoreditch High St, London E1 6PQ", category: "japanese" }

[dishoom, pizza_east, turkish_pide, british_breakfast, chef_italy].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
