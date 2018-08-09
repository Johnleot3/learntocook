# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

puts 'Creating 9 fake users...'
9.times do
  user = User.new(
    name: Faker::RuPaul.queen,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    category: [Faker::Food.dish],
    description: Faker::Food.description,
    )
  user.save!



  puts "Creating a kitchen for #{user.name}..."

  kitchen = Kitchen.new(
    user: user,
    name: Faker::Pokemon.location,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Lisbon",
    capacity: rand(0..5),
    languages: [Faker::Demographic.race])
  kitchen.save!

  kitchen = Kitchen.new(
    user: user,
    name: Faker::Pokemon.location,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Paris",
    capacity: rand(0..5),
    languages: [Faker::Demographic.race])
  kitchen.save!


  kitchen = Kitchen.new(
    user: user,
    name: Faker::Pokemon.location,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Naples",
    capacity: rand(0..5),
    languages: [Faker::Demographic.race])
  kitchen.save!


  kitchen = Kitchen.new(
    user: user,
    name: Faker::Pokemon.location,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Chalong",
    capacity: rand(0..5),
    languages: [Faker::Demographic.race])

  kitchen.save!
end
puts 'Finished!'
