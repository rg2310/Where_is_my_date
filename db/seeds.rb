# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Experience.destroy_all
# puts "Creating experiences..."
# tate = { name: "Date at the Tate", content: "Access the latest exhibition", price: 100, address: "Bankside, London SE1 9TG" }
# pizza_east = { name: "Pizza East", content: "56A Shoreditch High St, London E1 6PQ", price: 50, address: "56A Shoreditch High St, London E1 6JJ" }
# shard = { name: "shard", content: "blabla", price: 90, address: "32 London Bridge St, London SE1 9SG" }
# ronnie_scott = { name: "Ronnie Scott", content: "bla", price: 80, address: "47 Frith St, London W1D 4HT" }
puts 'Creating 1 test user... pass testing'
user = User.create!(
  email: "testing4@testing.com",
  password: "123456",
  first_name: "Temi",
  last_name: "Adaramewa"
)
file = URI.open('https://www.artnews.com/wp-content/uploads/2020/02/9384254a.jpg?resize=400,271')

puts 'Creating experiences'
experience = Experience.create!(
  name: "Date at the Tate",
  content: "Access the latest exhibition",
  price: 100,
  address: "Bankside, London SE1 9TG",
  user: user
)

experience.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

puts 'Creating experiences'
Experience.create!(
  name: "Pizza East",
  content: "56A Shoreditch High St, London E1 6PQ",
  price: 50,
  address: "56A Shoreditch High St, London E1 6JJ",
  user: user
)
puts 'Creating experiences'
Experience.create!(
  name: "The Shard",
  content: "blabla",
  price: 90,
  address: "32 London Bridge St, London SE1 9SG",
  user: user
)
puts 'Creating experiences'
Experience.create!(
name: "Ronnie Scott",
content: "European vanguard for jazz and blues from world's top musicians, in basement club with late bar. Enjoy some cocktails in an intimate atmosphere and some great jazz and blues music.",
price: 80,
address: "47 Frith St, London W1D 4HT",
user: user
)
puts 'Creating experiences'
Experience.create!(
name: "Lapland wonders: watch the northern lights ",
content: "After picking you up from the meeting point in the city center, we will depart the city to escape the light
pollution and find clear skies for viewing the Northern Lights. We will choose the location based on the weather conditions
prior to each tour so every night can bring a different experience",
price: 500,
address: "Tromsø, Norway",
user: user
)
puts 'Creating experiences'
Experience.create!(
name: "A night of fun in Brooklyn: Eastville Comedy Club",
content: "Eastville is the only bonafide comedy club in the borough of Brooklyn!
Along with yummy homemade popcorn and candy. Eastville is a 120 seat comedy club located right by the Barclays Center,
and downtown Brooklyn’s nightlife district! The club was founded by native New Yorkers with decades of experience in the comedy and bar business.
Therefore, we pride ourselves in featuring the most experienced, popular, and hilarious comedians while also providing an authentic Brooklyn setting for our patrons.",
price: 50,
address: "487 Atlantic Ave Brooklyn, NY 11217",
user: user
)
# puts "Cleaning user database..."
# User.destroy_all
# puts "Creating new users..."
# tania = { first_name: "Tania", email: "email@google.com", password: "123456" }
# renee = { first_name: "Renee", email: "email1@google.com", password: "123456" }
# temi = { first_name: "Temi", email: "email2@google.com", password: "123456" }
# enora = { first_name: "Enora", email: "email3@google.com", password: "123456" }
# [tania, renee, temi, enora].each do |attributes|
#   user = User.create!(attributes)
#   puts "Created #{user.first_name}"
# end
puts "Finished!"
# Experience.create!(user: User.last, name: "Date at the Tate")
#[tate, pizza_east, shard, ronnie_scott].each do |attributes|
 # experience = Experience.create!(attributes)
  # experience.user = User.last
  # puts "Created #{experience.name}"
# end
# puts "Finished!"
