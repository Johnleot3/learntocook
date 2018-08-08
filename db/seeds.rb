# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Kitchen.destroy_all
User.destroy_all

puts 'Creating 10 fake users...'
10.times do
  user = User.new(
    name: Faker::RuPaul.queen,
    email: Faker::Internet.email,
    password: Faker::Internet.password)
  user.save!

  puts "Creating a kitchen for #{user.name}..."
  kitchen = Kitchen.new(
    user: user,
    name: Faker::Pokemon.location,
    category: Faker::Food.dish,
    location: "#{Faker::Address.city}",
    capacity: rand(0..5)
  )
  kitchen.save!
end
puts 'Finished!'
