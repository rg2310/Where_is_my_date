# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Experience.destroy_all

puts "Creating experiences..."
tate = { name: "Date at the Tate", content: "Access the latest exhibition", price: 100, address: "Bankside, London SE1 9TG" }
pizza_east = { name: "Pizza East", content: "56A Shoreditch High St, London E1 6PQ", price: 50, address: "56A Shoreditch High St, London E1 6JJ" }
shard = { name: "shard", content: "blabla", price: 90, address: "32 London Bridge St, London SE1 9SG" }
ronnie_scott = { name: "Ronnie Scott", content: "bla", price: 80, address: "47 Frith St, London W1D 4HT" }

puts "Cleaning user database..."
User.destroy_all

puts "Creating new users..."
tania = { first_name: "Tania", email: "email@google.com", password: "123456" }
renee = { first_name: "Renee", email: "email1@google.com", password: "123456" }
temi = { first_name: "Temi", email: "email2@google.com", password: "123456" }
enora = { first_name: "Enora", email: "email3@google.com", password: "123456" }

[tania, renee, temi, enora].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end
puts "Finished!"

# Experience.create!(user: User.last, name: "Date at the Tate")
[tate, pizza_east, shard, ronnie_scott].each do |attributes|
  experience = Experience.create!(attributes)
  experience.user = User.last
  puts "Created #{experience.name}"
end
puts "Finished!"
