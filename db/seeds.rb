# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end





# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."
# dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "Japanese", phone_number:245657493 }
# pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "Italian", phone_number: 678567493 }
# jb_coffee = {name: "JB Coffee", address: "Pornic", category: "French", phone_number: }
# burgerKing =  {name: "Burger King", address: "Saint Herblain", category: "American", phone_number: }
# louis = {name: "CHez Louis", address: "Zola, Nantes", category: "Chinese", phone_number:789098756 }

# [dishoom, pizza_east, jb_coffee, burgerKing, louis].each do |options|
#   restaurant = Restaurant.create!(options)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"





require 'faker'

Restaurant.destroy_all

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: ["Chinese", "Italian", "Japanese", "French", "Belgian", "American"].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  restaurant.save!
end
puts 'Finished!'
