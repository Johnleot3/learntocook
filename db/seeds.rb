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

avatar_url = ["https://randomuser.me/api/portraits/men/76.jpg", "https://randomuser.me/api/portraits/men/23.jpg", "https://randomuser.me/api/portraits/women/60.jpg", "https://randomuser.me/api/portraits/women/6.jpg", "https://randomuser.me/api/portraits/women/9.jpg", "https://randomuser.me/api/portraits/women/47.jpg", "https://randomuser.me/api/portraits/men/62.jpg", "https://randomuser.me/api/portraits/men/88.jpg", "https://randomuser.me/api/portraits/men/77.jpg", "https://randomuser.me/api/portraits/women/62.jpg", "https://randomuser.me/api/portraits/women/21.jpg", "https://randomuser.me/api/portraits/women/20.jpg"]
puts 'Creating 9 fake users...'
9.times do
  user = User.new(
    name: Faker::RuPaul.queen,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    category: [Faker::Food.dish],
    description: Faker::Food.description,
    avatar: avatar_url.sample
    )
  user.save!

  kitchens_url = ["https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4fa061122a5ce899fcb5454dae8dbe99&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b54b672f6b83c7e9ccf289a0730e6f75&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1453831362806-3d5577f014a4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9dd8da96be0724ab84e4147d428f6bba&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=67fb2e7b1fbe39b18b51146234ef38aa&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=be3aa106f944edc77c68fcd567c22bbb&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aba7663f8f57d37a53706edff54fd1c6&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1473093226795-af9932fe5856?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3bf6fd384a4045ad91b8f08279f02ab8&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=74ac7c1aa35dc36f50cc1ac7517c70a7&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1503764654157-72d979d9af2f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=71cdddf5cc615224cf2c26614d20154d&auto=format&fit=crop&w=1653&q=80", "https://images.unsplash.com/photo-1493807742375-fbc46d996e8f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6f0038573a81b1169576b6674a3ce202&auto=format&fit=crop&w=1076&q=80", "https://images.unsplash.com/photo-1475090169767-40ed8d18f67d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c5a41bfd2957bec043f307b58d10cef9&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1485962398705-ef6a13c41e8f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b476c11d5b658cd28bdd4920279ecf7a&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1504855328839-2f4baf9e0fd7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=db0c8e5539456faeca0e49c79e2ccb16&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1503810473512-f64b56827964?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=cb44a21c4469e257a39f30949c81931d&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1514536338919-cd001f6dc6b3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=48f4f1385c293d8520c1f9c3233a98d6&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1464219222984-216ebffaaf85?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=de182c33e4aa019a30bd1976674dfb4f&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1448043552756-e747b7a2b2b8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=33b0e638540ff8ab1325e2ed73bafd58&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1455099229380-7b52707e356a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1c4ac0bc668b0ce5e9d8abd2010a5279&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1426869981800-95ebf51ce900?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=63ec77eae2b7b81c8beab9e87bbd3a01&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1504263716296-ed1a29eca28c?ixlib=rb-0.3.5&s=c78c8bddacf0359452720895f7f13165&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1532768641073-503a250f9754?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bceece29b062fe6d758ddfa2400c554c&auto=format&fit=crop&w=800&q=60",]


  puts "Creating a kitchen for #{user.name}..."

  kitchen = Kitchen.new(
    user: user,
    name: Faker::Name.name,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Lisbon",
    kitchen_pic: kitchens_url.sample,
    capacity: rand(0..5),
    price: rand(15..50),
    languages: [Faker::Demographic.race])
  kitchen.save!

  kitchen = Kitchen.new(
    user: user,
    name: Faker::Name.name,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Paris",
    kitchen_pic: kitchens_url.sample,
    capacity: rand(0..5),
    price: rand(15..50),
    languages: [Faker::Demographic.race])
  kitchen.save!


  kitchen = Kitchen.new(
    user: user,
    name: Faker::Name.name,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Naples",
    kitchen_pic: kitchens_url.sample,
    capacity: rand(0..5),
    price: rand(15..50),
    languages: [Faker::Demographic.race])
  kitchen.save!


  kitchen = Kitchen.new(
    user: user,
    name: Faker::Name.name,
    category: Faker::Food.dish,
    description: Faker::Food.description,
    location: "Chalong",
    kitchen_pic: kitchens_url.sample,
    capacity: rand(0..5),
    price: rand(15..50),
    languages: [Faker::Demographic.race])

  kitchen.save!
end
puts 'Finished!'
