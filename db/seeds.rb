# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Event.destroy_all


5.times do
  u = User.create(first_name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   description: Faker::ChuckNorris.fact)
  u.email = u.first_name + '_' + u.last_name + '@yopmail.com'
  u.save
end

puts 'User created !'

5.times do
  Event.create(title: Faker::DcComics.title,
  start_date: Faker::Date.forward(days: 10),
  duration: [5,10,20,30].sample,
  description: Faker::Lorem.sentence(word_count: 15),
  price: Faker::Number.between(from: 1, to: 1000),
  location: Faker::JapaneseMedia::SwordArtOnline.location, admin_id: rand(1..5))
  
end

puts 'Event created !'
puts "#{} "
5.times do
Attendance.create(
  stripe_customer_id: "laquequete",
  user_id: User.all.sample.id,
  event_id: Event.all.sample.id
)
end

puts 'Attendances created !'

